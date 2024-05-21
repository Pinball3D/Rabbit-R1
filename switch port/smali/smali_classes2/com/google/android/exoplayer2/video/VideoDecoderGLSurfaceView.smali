.class public final Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "VideoDecoderGLSurfaceView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoDecoderGLSV"


# instance fields
.field private final renderer:Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance p1, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->renderer:Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;

    const/4 p2, 0x1

    .line 69
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    const/4 p2, 0x2

    .line 70
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->setRenderMode(I)V

    return-void
.end method


# virtual methods
.method public getVideoDecoderOutputBufferRenderer()Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setOutputBuffer(Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->renderer:Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView$Renderer;->setOutputBuffer(Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;)V

    return-void
.end method
