.class Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry$1;
.super Ljava/lang/Object;
.source "FlutterView.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry;


# direct methods
.method constructor <init>(Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry$1;->this$1:Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry;

    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object p1, p0, Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry$1;->this$1:Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry;

    .line 953
    invoke-static {p1}, Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry;->access$200(Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry$1;->this$1:Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry;

    iget-object p1, p1, Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry;->this$0:Lio/flutter/view/FlutterView;

    invoke-static {p1}, Lio/flutter/view/FlutterView;->access$100(Lio/flutter/view/FlutterView;)Lio/flutter/view/FlutterNativeView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry$1;->this$1:Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry;

    .line 961
    iget-object p1, p1, Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry;->this$0:Lio/flutter/view/FlutterView;

    invoke-static {p1}, Lio/flutter/view/FlutterView;->access$100(Lio/flutter/view/FlutterView;)Lio/flutter/view/FlutterNativeView;

    move-result-object p1

    .line 962
    invoke-virtual {p1}, Lio/flutter/view/FlutterNativeView;->getFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p1

    iget-object p0, p0, Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry$1;->this$1:Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry;

    .line 963
    invoke-static {p0}, Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry;->access$300(Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->markTextureFrameAvailable(J)V

    :cond_1
    :goto_0
    return-void
.end method
