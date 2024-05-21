.class Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReferenceCountListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;)V
    .locals 0

    .line 946
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)V

    return-void
.end method

.method static synthetic lambda$onReferenceCountDecremented$0(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .locals 1

    const/4 v0, 0x0

    .line 966
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    return-void
.end method


# virtual methods
.method public onReferenceCountDecremented(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;I)V
    .locals 5

    const/4 v0, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 959
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$800(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$500(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 963
    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$600(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 964
    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$700(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    .line 968
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$500(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 965
    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    :cond_0
    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 971
    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$400(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 972
    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$900(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    move-result-object p2

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 973
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$902(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 975
    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1000(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    move-result-object p2

    if-ne p2, p1, :cond_2

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 976
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1002(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 978
    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1100(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->onSessionFullyReleased(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 979
    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$500(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 980
    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$700(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 981
    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$600(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 984
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1200(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)V

    return-void
.end method

.method public onReferenceCountIncremented(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;I)V
    .locals 4

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 950
    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$500(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 952
    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$600(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 953
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$700(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
