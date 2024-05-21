.class public final Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "VideoDecoderGLSurfaceView.java"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoDecoderGLSV"


# instance fields
.field private final renderer:Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance p1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;->renderer:Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;

    const/4 p2, 0x1

    .line 71
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    const/4 p2, 0x2

    .line 72
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 73
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;->setRenderMode(I)V

    return-void
.end method


# virtual methods
.method public getVideoDecoderOutputBufferRenderer()Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;->renderer:Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;

    .line 79
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->setOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    return-void
.end method
