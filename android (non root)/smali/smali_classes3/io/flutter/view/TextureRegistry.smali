.class public interface abstract Lio/flutter/view/TextureRegistry;
.super Ljava/lang/Object;
.source "TextureRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/TextureRegistry$ImageConsumer;,
        Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;,
        Lio/flutter/view/TextureRegistry$OnFrameConsumedListener;,
        Lio/flutter/view/TextureRegistry$ImageTextureEntry;,
        Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;,
        Lio/flutter/view/TextureRegistry$SurfaceProducer;,
        Lio/flutter/view/TextureRegistry$TextureEntry;
    }
.end annotation


# virtual methods
.method public abstract createImageTexture()Lio/flutter/view/TextureRegistry$ImageTextureEntry;
.end method

.method public abstract createSurfaceProducer()Lio/flutter/view/TextureRegistry$SurfaceProducer;
.end method

.method public abstract createSurfaceTexture()Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public abstract registerSurfaceTexture(Landroid/graphics/SurfaceTexture;)Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;
.end method
