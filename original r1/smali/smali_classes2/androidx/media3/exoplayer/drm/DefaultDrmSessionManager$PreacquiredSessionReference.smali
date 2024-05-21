.class Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreacquiredSessionReference"
.end annotation


# instance fields
.field private final eventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field private isReleased:Z

.field private session:Landroidx/media3/exoplayer/drm/DrmSession;

.field final synthetic this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    return-void
.end method


# virtual methods
.method public acquire(Landroidx/media3/common/Format;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 951
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$700(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;Landroidx/media3/common/Format;)V

    .line 952
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$acquire$0$androidx-media3-exoplayer-drm-DefaultDrmSessionManager$PreacquiredSessionReference(Landroidx/media3/common/Format;)V
    .locals 4

    .line 0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 954
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$800(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 961
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1400(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    const/4 v3, 0x0

    .line 960
    invoke-static {v0, v1, v2, p1, v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1500(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroid/os/Looper;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;Z)Landroidx/media3/exoplayer/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->session:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 965
    invoke-static {p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1300(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$release$1$androidx-media3-exoplayer-drm-DefaultDrmSessionManager$PreacquiredSessionReference()V
    .locals 2

    .line 0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->session:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 980
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 982
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1300(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 974
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$700(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;)V

    .line 973
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method
