.class final Landroidx/media3/exoplayer/video/spherical/OrientationListener;
.super Ljava/lang/Object;
.source "OrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;
    }
.end annotation


# instance fields
.field private final angles:[F

.field private final deviceOrientationMatrix4x4:[F

.field private final display:Landroid/view/Display;

.field private final listeners:[Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;

.field private final recenterMatrix4x4:[F

.field private recenterMatrixComputed:Z

.field private final tempMatrix4x4:[F


# direct methods
.method public varargs constructor <init>(Landroid/view/Display;[Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrix4x4:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->angles:[F

    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->display:Landroid/view/Display;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->listeners:[Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;

    return-void
.end method

.method private extractRoll([F)F
    .locals 3

    const/16 v0, 0x83

    iget-object v1, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    const/4 v2, 0x1

    .line 91
    invoke-static {p1, v2, v0, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    iget-object p1, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->angles:[F

    .line 93
    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->angles:[F

    const/4 p1, 0x2

    .line 94
    aget p0, p0, p1

    return p0
.end method

.method private notifyListeners([FF)V
    .locals 3

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->listeners:[Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;

    .line 74
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 75
    invoke-interface {v2, p1, p2}, Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;->onOrientationChange([FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private recenter([F)V
    .locals 9

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrixComputed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrix4x4:[F

    .line 81
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->computeRecenterMatrix([F[F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrixComputed:Z

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    .line 84
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    const/4 v6, 0x0

    iget-object v7, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrix4x4:[F

    const/4 v8, 0x0

    move-object v3, p1

    .line 85
    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method private rotateAroundZ([FI)V
    .locals 4

    if-eqz p2, :cond_3

    const/16 v0, 0x81

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/16 v3, 0x82

    if-eq p2, v1, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    move v0, v3

    goto :goto_0

    .line 116
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v0

    move v0, v1

    :goto_0
    iget-object p2, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    .line 118
    array-length v1, p2

    const/4 v3, 0x0

    invoke-static {p1, v3, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    .line 119
    invoke-static {p0, v0, v2, p1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    :cond_3
    return-void
.end method

.method private static rotateYtoSky([F)V
    .locals 6

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 123
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    .line 59
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    iget-object p1, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->display:Landroid/view/Display;

    .line 60
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->rotateAroundZ([FI)V

    iget-object p1, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    .line 61
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->extractRoll([F)F

    move-result p1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    .line 63
    invoke-static {v0}, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->rotateYtoSky([F)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    .line 64
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->recenter([F)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    .line 65
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->notifyListeners([FF)V

    return-void
.end method
