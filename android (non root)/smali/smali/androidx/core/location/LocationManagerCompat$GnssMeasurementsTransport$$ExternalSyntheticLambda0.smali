.class public final synthetic Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:Landroid/location/GnssMeasurementsEvent;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda0;->f$0:Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;

    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda0;->f$2:Landroid/location/GnssMeasurementsEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda0;->f$0:Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;

    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda0;->f$2:Landroid/location/GnssMeasurementsEvent;

    invoke-virtual {v0, v1, p0}, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->lambda$onGnssMeasurementsReceived$0$androidx-core-location-LocationManagerCompat$GnssMeasurementsTransport(Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method
