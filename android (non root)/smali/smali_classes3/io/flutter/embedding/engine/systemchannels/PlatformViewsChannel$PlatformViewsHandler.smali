.class public interface abstract Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;
.super Ljava/lang/Object;
.source "PlatformViewsChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlatformViewsHandler"
.end annotation


# static fields
.field public static final NON_TEXTURE_FALLBACK:J = -0x2L


# virtual methods
.method public abstract clearFocus(I)V
.end method

.method public abstract createForPlatformViewLayer(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;)V
.end method

.method public abstract createForTextureLayer(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;)J
.end method

.method public abstract dispose(I)V
.end method

.method public abstract offset(IDD)V
.end method

.method public abstract onTouch(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewTouch;)V
.end method

.method public abstract resize(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;)V
.end method

.method public abstract setDirection(II)V
.end method

.method public abstract synchronizeToNativeViewHierarchy(Z)V
.end method
