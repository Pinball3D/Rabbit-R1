.class Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 789
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 794
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 799
    invoke-static {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$400(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 800
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->hasSessionId([B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 801
    iget p0, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onMediaDrmEvent(I)V

    :cond_2
    return-void
.end method
