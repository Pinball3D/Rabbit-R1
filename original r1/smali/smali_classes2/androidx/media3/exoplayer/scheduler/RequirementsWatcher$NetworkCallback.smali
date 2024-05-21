.class final Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "RequirementsWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetworkCallback"
.end annotation


# instance fields
.field private networkValidated:Z

.field private receivedCapabilitiesChange:Z

.field final synthetic this$0:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;

    .line 184
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$1;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;-><init>(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;)V

    return-void
.end method

.method private postCheckRequirements()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;

    .line 220
    invoke-static {v0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->access$300(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postRecheckNotMetNetworkRequirements()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;

    .line 229
    invoke-static {v0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->access$300(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method synthetic lambda$postCheckRequirements$0$androidx-media3-exoplayer-scheduler-RequirementsWatcher$NetworkCallback()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;

    .line 222
    invoke-static {v0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->access$400(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;)Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;

    .line 223
    invoke-static {p0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->access$200(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$postRecheckNotMetNetworkRequirements$1$androidx-media3-exoplayer-scheduler-RequirementsWatcher$NetworkCallback()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;

    .line 231
    invoke-static {v0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->access$400(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;)Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;

    .line 232
    invoke-static {p0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;->access$500(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;)V

    :cond_0
    return-void
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;->postCheckRequirements()V

    return-void
.end method

.method public onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 202
    invoke-direct {p0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;->postRecheckNotMetNetworkRequirements()V

    :cond_0
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    const/16 p1, 0x10

    .line 209
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    iget-boolean p2, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;->receivedCapabilitiesChange:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;->networkValidated:Z

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 215
    invoke-direct {p0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;->postRecheckNotMetNetworkRequirements()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;->receivedCapabilitiesChange:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;->networkValidated:Z

    .line 213
    invoke-direct {p0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;->postCheckRequirements()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;->postCheckRequirements()V

    return-void
.end method
