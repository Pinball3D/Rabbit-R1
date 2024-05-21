.class final Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;
.super Ljava/lang/Object;
.source "SphericalGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroidx/media3/exoplayer/video/spherical/TouchTracker$Listener;
.implements Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Renderer"
.end annotation


# instance fields
.field private final deviceOrientationMatrix:[F

.field private deviceRoll:F

.field private final projectionMatrix:[F

.field private final scene:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

.field private final tempMatrix:[F

.field final synthetic this$0:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

.field private touchPitch:F

.field private final touchPitchMatrix:[F

.field private final touchYawMatrix:[F

.field private final viewMatrix:[F

.field private final viewProjectionMatrix:[F


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroidx/media3/exoplayer/video/spherical/SceneRenderer;)V
    .locals 4

    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->this$0:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array v0, p1, [F

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    new-array v0, p1, [F

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    new-array v0, p1, [F

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    new-array v1, p1, [F

    iput-object v1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    new-array v2, p1, [F

    iput-object v2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    new-array v3, p1, [F

    iput-object v3, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    new-array p1, p1, [F

    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    iput-object p2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->scene:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    .line 290
    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->setToIdentity([F)V

    .line 291
    invoke-static {v1}, Landroidx/media3/common/util/GlUtil;->setToIdentity([F)V

    .line 292
    invoke-static {v2}, Landroidx/media3/common/util/GlUtil;->setToIdentity([F)V

    const p1, 0x40490fdb    # (float)Math.PI

    iput p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    return-void
.end method

.method private calculateFieldOfViewInYDirection(F)F
    .locals 2

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 368
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    float-to-double p0, p1

    div-double/2addr v0, p0

    .line 369
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p0, v0

    double-to-float p0, p0

    return p0

    :cond_0
    const/high16 p0, 0x42b40000    # 90.0f

    return p0
.end method

.method private updatePitchMatrix()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitch:F

    neg-float v2, v2

    iget v3, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    float-to-double v3, v3

    .line 345
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget p0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    float-to-double v4, p0

    .line 346
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x0

    .line 341
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12

    .line 314
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    const/4 v5, 0x0

    .line 315
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v6, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    const/4 v7, 0x0

    iget-object v8, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    const/4 v9, 0x0

    iget-object v10, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    const/4 v11, 0x0

    .line 316
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 317
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    const/4 v5, 0x0

    .line 319
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->scene:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    const/4 v0, 0x0

    .line 320
    invoke-virtual {p1, p0, v0}, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->drawFrame([FZ)V

    return-void

    :catchall_0
    move-exception p1

    .line 317
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onOrientationChange([FF)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    .line 327
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    neg-float p1, p2

    iput p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    .line 329
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->updatePitchMatrix()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onScrollChange(Landroid/graphics/PointF;)V
    .locals 7

    monitor-enter p0

    .line 353
    :try_start_0
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitch:F

    .line 354
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->updatePitchMatrix()V

    iget-object v1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    const/4 v2, 0x0

    .line 355
    iget p1, p1, Landroid/graphics/PointF;->x:F

    neg-float v3, p1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->this$0:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 361
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->performClick()Z

    move-result p0

    return p0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    const/4 p1, 0x0

    .line 303
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    int-to-float p1, p2

    int-to-float p2, p3

    div-float v3, p1, p2

    .line 305
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->calculateFieldOfViewInYDirection(F)F

    move-result v2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    const/4 v1, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x42c80000    # 100.0f

    .line 306
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    return-void
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->this$0:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object p2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->scene:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    .line 298
    invoke-virtual {p2}, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->init()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->access$000(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
