.class Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreacquiredSessionReference"
.end annotation


# instance fields
.field private final eventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private isReleased:Z

.field private session:Lcom/google/android/exoplayer2/drm/DrmSession;

.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    return-void
.end method


# virtual methods
.method public acquire(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 1031
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$700(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;Lcom/google/android/exoplayer2/Format;)V

    .line 1032
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$acquire$0$com-google-android-exoplayer2-drm-DefaultDrmSessionManager$PreacquiredSessionReference(Lcom/google/android/exoplayer2/Format;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 1034
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$800(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 1041
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1400(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    const/4 v3, 0x0

    .line 1040
    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1500(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->session:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 1045
    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1300(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$release$1$com-google-android-exoplayer2-drm-DefaultDrmSessionManager$PreacquiredSessionReference()V
    .locals 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->session:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 1060
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 1062
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1300(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 1054
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$700(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;)V

    .line 1053
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method
