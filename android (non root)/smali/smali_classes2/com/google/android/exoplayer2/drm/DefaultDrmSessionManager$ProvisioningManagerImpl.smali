.class Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisioningManagerImpl"
.end annotation


# instance fields
.field private provisioningSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

.field private final sessionsAwaitingProvisioning:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)V
    .locals 0

    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public onProvisionCompleted()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 912
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 914
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 915
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 916
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onProvisionCompleted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onProvisionError(Ljava/lang/Exception;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 924
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 926
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 927
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 928
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onProvisionError(Ljava/lang/Exception;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSessionFullyReleased(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 933
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 936
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 939
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 940
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provision()V

    :cond_0
    return-void
.end method

.method public provisionRequired(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 899
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 905
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provision()V

    return-void
.end method
