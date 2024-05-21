.class Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;
.super Landroid/location/GnssMeasurementsEvent$Callback;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssMeasurementsTransport"
.end annotation


# instance fields
.field final mCallback:Landroid/location/GnssMeasurementsEvent$Callback;

.field volatile mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/location/GnssMeasurementsEvent$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 806
    invoke-direct {p0}, Landroid/location/GnssMeasurementsEvent$Callback;-><init>()V

    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->mCallback:Landroid/location/GnssMeasurementsEvent$Callback;

    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method synthetic lambda$onGnssMeasurementsReceived$0$androidx-core-location-LocationManagerCompat$GnssMeasurementsTransport(Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->mCallback:Landroid/location/GnssMeasurementsEvent$Callback;

    .line 826
    invoke-virtual {p0, p2}, Landroid/location/GnssMeasurementsEvent$Callback;->onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method synthetic lambda$onStatusChanged$1$androidx-core-location-LocationManagerCompat$GnssMeasurementsTransport(Ljava/util/concurrent/Executor;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->mCallback:Landroid/location/GnssMeasurementsEvent$Callback;

    .line 841
    invoke-virtual {p0, p2}, Landroid/location/GnssMeasurementsEvent$Callback;->onStatusChanged(I)V

    return-void
.end method

.method public onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V
    .locals 2

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    return-void

    .line 822
    :cond_0
    new-instance v1, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda0;-><init>(Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStatusChanged(I)V
    .locals 2

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    return-void

    .line 837
    :cond_0
    new-instance v1, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda1;-><init>(Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;Ljava/util/concurrent/Executor;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
