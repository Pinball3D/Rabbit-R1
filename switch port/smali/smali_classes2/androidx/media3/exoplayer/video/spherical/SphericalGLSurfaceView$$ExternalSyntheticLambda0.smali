.class public final synthetic Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

.field public final synthetic f$1:Landroid/graphics/SurfaceTexture;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->lambda$onSurfaceTextureAvailable$1$androidx-media3-exoplayer-video-spherical-SphericalGLSurfaceView(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
