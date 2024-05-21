.class Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget$2;
.super Ljava/lang/Object;
.source "SurfaceTexturePlatformViewRenderTarget.java"

# interfaces
.implements Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget$2;->this$0:Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x50

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget$2;->this$0:Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;

    const/4 p1, 0x1

    .line 61
    invoke-static {p0, p1}, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->access$102(Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;Z)Z

    :cond_0
    return-void
.end method
