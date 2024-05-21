.class Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;
.super Ljava/lang/Object;
.source "FlutterRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerImage"
.end annotation


# instance fields
.field public final image:Landroid/media/Image;

.field public final reader:Landroid/media/ImageReader;

.field final synthetic this$1:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;Landroid/media/ImageReader;Landroid/media/Image;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;->this$1:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;->reader:Landroid/media/ImageReader;

    iput-object p3, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;->image:Landroid/media/Image;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;->image:Landroid/media/Image;

    .line 386
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;->this$1:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;->reader:Landroid/media/ImageReader;

    .line 387
    invoke-static {v0, p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->access$800(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;Landroid/media/ImageReader;)V

    return-void
.end method
