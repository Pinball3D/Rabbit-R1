.class Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry$1;
.super Ljava/lang/Object;
.source "FlutterRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry$1;->this$1:Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry$1;->this$1:Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;

    .line 234
    invoke-static {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->access$100(Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;)Lio/flutter/view/TextureRegistry$OnFrameConsumedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry$1;->this$1:Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;

    .line 235
    invoke-static {p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->access$100(Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;)Lio/flutter/view/TextureRegistry$OnFrameConsumedListener;

    move-result-object p0

    invoke-interface {p0}, Lio/flutter/view/TextureRegistry$OnFrameConsumedListener;->onFrameConsumed()V

    :cond_0
    return-void
.end method
