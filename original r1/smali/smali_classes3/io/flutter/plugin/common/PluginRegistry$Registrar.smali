.class public interface abstract Lio/flutter/plugin/common/PluginRegistry$Registrar;
.super Ljava/lang/Object;
.source "PluginRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/common/PluginRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Registrar"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract activeContext()Landroid/content/Context;
.end method

.method public abstract activity()Landroid/app/Activity;
.end method

.method public abstract addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
.end method

.method public abstract addNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
.end method

.method public abstract addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
.end method

.method public abstract addUserLeaveHintListener(Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
.end method

.method public abstract addViewDestroyListener(Lio/flutter/plugin/common/PluginRegistry$ViewDestroyListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
.end method

.method public abstract addWindowFocusChangedListener(Lio/flutter/plugin/common/PluginRegistry$WindowFocusChangedListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
.end method

.method public abstract context()Landroid/content/Context;
.end method

.method public abstract lookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract lookupKeyForAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract messenger()Lio/flutter/plugin/common/BinaryMessenger;
.end method

.method public abstract platformViewRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;
.end method

.method public abstract publish(Ljava/lang/Object;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
.end method

.method public abstract textures()Lio/flutter/view/TextureRegistry;
.end method

.method public abstract view()Lio/flutter/view/FlutterView;
.end method
