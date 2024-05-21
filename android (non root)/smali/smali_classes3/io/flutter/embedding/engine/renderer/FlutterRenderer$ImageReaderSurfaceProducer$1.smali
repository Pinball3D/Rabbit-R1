.class Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$1;
.super Ljava/lang/Object;
.source "FlutterRenderer.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$1;->this$1:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3

    .line 409
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onImageAvailable acquireLatestImage failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageReaderSurfaceProducer"

    invoke-static {v1, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$1;->this$1:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;

    .line 416
    new-instance v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$1;->this$1:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;

    invoke-direct {v2, p0, p1, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;Landroid/media/ImageReader;Landroid/media/Image;)V

    invoke-static {v1, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->access$900(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;)V

    return-void
.end method
