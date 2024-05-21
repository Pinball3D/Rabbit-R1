.class public final synthetic Ltech/rabbit/r1systemupdater/CheckUpdateWorker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;


# instance fields
.field public final synthetic f$0:Ltech/rabbit/r1systemupdater/CheckUpdateWorker;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ltech/rabbit/r1systemupdater/CheckUpdateWorker;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1systemupdater/CheckUpdateWorker$$ExternalSyntheticLambda0;->f$0:Ltech/rabbit/r1systemupdater/CheckUpdateWorker;

    iput-object p2, p0, Ltech/rabbit/r1systemupdater/CheckUpdateWorker$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onReuslt(Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1systemupdater/CheckUpdateWorker$$ExternalSyntheticLambda0;->f$0:Ltech/rabbit/r1systemupdater/CheckUpdateWorker;

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/CheckUpdateWorker$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p0, p1}, Ltech/rabbit/r1systemupdater/CheckUpdateWorker;->$r8$lambda$rXL8BvGh_EvqETBjs09Gd3aowdw(Ltech/rabbit/r1systemupdater/CheckUpdateWorker;Ljava/util/concurrent/CountDownLatch;Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V

    return-void
.end method
