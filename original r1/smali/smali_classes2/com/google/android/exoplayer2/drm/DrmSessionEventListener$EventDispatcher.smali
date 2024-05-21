.class public Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "DrmSessionEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;
    }
.end annotation


# instance fields
.field private final listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final windowIndex:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 108
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;",
            ">;I",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ")V"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-void
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V
    .locals 1

    .line 142
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 144
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public drmKeysLoaded()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 179
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 180
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    .line 181
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drmKeysRemoved()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 208
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 209
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    .line 210
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drmKeysRestored()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 198
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 199
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    .line 200
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drmSessionAcquired(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 166
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 167
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    .line 168
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;I)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drmSessionManagerError(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 188
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 189
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    .line 190
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;Ljava/lang/Exception;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drmSessionReleased()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 218
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 219
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    .line 220
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic lambda$drmKeysLoaded$1$com-google-android-exoplayer2-drm-DrmSessionEventListener$EventDispatcher(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 182
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;->onDrmKeysLoaded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$drmKeysRemoved$4$com-google-android-exoplayer2-drm-DrmSessionEventListener$EventDispatcher(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 212
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;->onDrmKeysRemoved(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$drmKeysRestored$3$com-google-android-exoplayer2-drm-DrmSessionEventListener$EventDispatcher(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 202
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;->onDrmKeysRestored(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$drmSessionAcquired$0$com-google-android-exoplayer2-drm-DrmSessionEventListener$EventDispatcher(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;I)V
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 171
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;->onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 172
    invoke-interface {p1, v0, p0, p2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;->onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;I)V

    return-void
.end method

.method synthetic lambda$drmSessionManagerError$2$com-google-android-exoplayer2-drm-DrmSessionEventListener$EventDispatcher(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;Ljava/lang/Exception;)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 192
    invoke-interface {p1, v0, p0, p2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;->onDrmSessionManagerError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V

    return-void
.end method

.method synthetic lambda$drmSessionReleased$5$com-google-android-exoplayer2-drm-DrmSessionEventListener$EventDispatcher(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 222
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;->onDrmSessionReleased(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public removeEventListener(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 153
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 154
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 155
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .locals 1

    .line 132
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-object v0
.end method
