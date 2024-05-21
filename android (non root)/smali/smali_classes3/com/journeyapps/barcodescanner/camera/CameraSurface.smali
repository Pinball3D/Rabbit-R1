.class public Lcom/journeyapps/barcodescanner/camera/CameraSurface;
.super Ljava/lang/Object;
.source "CameraSurface.java"


# instance fields
.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "surfaceTexture may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-void

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "surfaceHolder may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public setPreview(Landroid/hardware/Camera;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 45
    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    :goto_0
    return-void
.end method
