.class Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget$1;
.super Ljava/lang/Object;
.source "ImageReaderPlatformViewRenderTarget.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget$1;->this$0:Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    .line 41
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onImageAvailable acquireLatestImage failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageReaderPlatformViewRenderTarget"

    invoke-static {v0, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget$1;->this$0:Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;

    .line 48
    invoke-static {p0}, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->access$000(Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;)Lio/flutter/view/TextureRegistry$ImageTextureEntry;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/flutter/view/TextureRegistry$ImageTextureEntry;->pushImage(Landroid/media/Image;)V

    return-void
.end method
