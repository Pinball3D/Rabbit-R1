.class Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReferenceCountListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$1;)V
    .locals 0

    .line 866
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)V

    return-void
.end method

.method static synthetic lambda$onReferenceCountDecremented$0(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V
    .locals 1

    const/4 v0, 0x0

    .line 886
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    return-void
.end method


# virtual methods
.method public onReferenceCountDecremented(Landroidx/media3/exoplayer/drm/DefaultDrmSession;I)V
    .locals 5

    const/4 v0, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 879
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$800(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$500(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 883
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$600(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 884
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$700(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    new-instance v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V

    .line 888
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$500(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 885
    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    :cond_0
    if-nez p2, :cond_3

    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 891
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$400(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 892
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$900(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object p2

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1

    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 893
    invoke-static {p2, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$902(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 895
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1000(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object p2

    if-ne p2, p1, :cond_2

    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 896
    invoke-static {p2, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1002(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    :cond_2
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 898
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1100(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->onSessionFullyReleased(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V

    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 899
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$500(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 900
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$700(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 901
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$600(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 904
    invoke-static {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1200(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)V

    return-void
.end method

.method public onReferenceCountIncremented(Landroidx/media3/exoplayer/drm/DefaultDrmSession;I)V
    .locals 4

    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 870
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$500(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 872
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$600(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 873
    invoke-static {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$700(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
