.class public final Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre24;
.super Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;
.source "NetworkStateTracker.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker<",
        "Landroidx/work/impl/constraints/NetworkState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre24;",
        "Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;",
        "Landroidx/work/impl/constraints/NetworkState;",
        "context",
        "Landroid/content/Context;",
        "taskExecutor",
        "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;",
        "(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V",
        "connectivityManager",
        "Landroid/net/ConnectivityManager;",
        "intentFilter",
        "Landroid/content/IntentFilter;",
        "getIntentFilter$annotations",
        "()V",
        "getIntentFilter",
        "()Landroid/content/IntentFilter;",
        "onBroadcastReceive",
        "",
        "intent",
        "Landroid/content/Intent;",
        "readSystemState",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p1, p2}, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 97
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre24;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre24;->connectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public static synthetic getIntentFilter$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 109
    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public onBroadcastReceive(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network broadcast received"

    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre24;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 103
    invoke-static {p1}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->getActiveNetworkState(Landroid/net/ConnectivityManager;)Landroidx/work/impl/constraints/NetworkState;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre24;->setState(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public readSystemState()Landroidx/work/impl/constraints/NetworkState;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre24;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 111
    invoke-static {p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->getActiveNetworkState(Landroid/net/ConnectivityManager;)Landroidx/work/impl/constraints/NetworkState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic readSystemState()Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre24;->readSystemState()Landroidx/work/impl/constraints/NetworkState;

    move-result-object p0

    return-object p0
.end method
