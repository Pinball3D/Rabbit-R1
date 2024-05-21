.class public interface abstract Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;
.super Ljava/lang/Object;
.source "TextureRegistry.java"

# interfaces
.implements Lio/flutter/view/TextureRegistry$TextureEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/TextureRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SurfaceTextureEntry"
.end annotation


# virtual methods
.method public abstract id()J
.end method

.method public abstract release()V
.end method

.method public setOnFrameConsumedListener(Lio/flutter/view/TextureRegistry$OnFrameConsumedListener;)V
    .locals 0

    return-void
.end method

.method public setOnTrimMemoryListener(Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;)V
    .locals 0

    return-void
.end method

.method public abstract surfaceTexture()Landroid/graphics/SurfaceTexture;
.end method
