.class Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;
.super Ljava/lang/Object;
.source "FlutterPluginRegistry.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$Registrar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/app/FlutterPluginRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlutterRegistrar"
.end annotation


# instance fields
.field private final pluginKey:Ljava/lang/String;

.field final synthetic this$0:Lio/flutter/app/FlutterPluginRegistry;


# direct methods
.method constructor <init>(Lio/flutter/app/FlutterPluginRegistry;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;->this$0:Lio/flutter/app/FlutterPluginRegistry;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;->pluginKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public activeContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;->this$0:Lio/flutter/app/FlutterPluginRegistry;

    .line 123
    invoke-static {v0}, Lio/flutter/app/FlutterPluginRegistry;->access$000(Lio/flutter/app/FlutterPluginRegistry;)Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;->this$0:Lio/flutter/app/FlutterPluginRegistry;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/flutter/app/FlutterPluginRegistry;->access$000(Lio/flutter/app/FlutterPluginRegistry;)Landroid/app/Activity;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lio/flutter/app/FlutterPluginRegistry;->access$100(Lio/flutter/app/FlutterPluginRegistry;)Landroid/content/Context;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public activity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;->this$0:Lio/flutter/app/FlutterPluginRegistry;

    .line 113
    invoke-static {p0}, Lio/flutter/app/FlutterPluginRegistry;->access$000(Lio/flutter/app/FlutterPluginRegistry;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
    .locals 1

    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;->this$0:Lio/flutter/app/FlutterPluginRegistry;

    .line 171
    invoke-static {v0}, Lio/flutter/app/FlutterPluginRegistry;->access$700(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
    .locals 1

    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;->this$0:Lio/flutter/app/FlutterPluginRegistry;

    .line 177
    invoke-static {v0}, Lio/flutter/app/FlutterPluginRegistry;->access$800(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
    .locals 1

    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;->this$0:Lio/flutter/app/FlutterPluginRegistry;

    .line 165
    invoke-static {v0}, Lio/flutter/app/FlutterPluginRegistry;->access$600(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addUserLeaveHintListener(Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
    .locals 1

    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;->this$0:Lio/flutter/app/FlutterPluginRegistry;

    .line 183
    invoke-static {v0}, Lio/flutter/app/FlutterPluginRegistry;->access$900(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addViewDestroyListener(Lio/flutter/plugin/common/PluginRegistry$ViewDestroyListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
    .locals 1

    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;->this$0:Lio/flutter/app/FlutterPluginRegistry;

    .line 195
    invoke-static {v0}, Lio/flutter/app/FlutterPluginRegistry;->access$1100(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addWindowFocusChangedListener(Lio/flutter/plugin/common/PluginRegistry$WindowFocusChangedListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
    .locals 1

    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;->this$0:Lio/flutter/app/FlutterPluginRegistry;

    .line 189
    invoke-static {v0}, Lio/flutter/app/FlutterPluginRegistry;->access$1000(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public context()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;->this$0:Lio/flutter/app/FlutterPluginRegistry;

    .line 118
    invoke-static {p0}, Lio/flutter/app/FlutterPluginRegistry;->access$100(Lio/flutter/app/FlutterPluginRegistry;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public lookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 148
    invoke-static {p1}, Lio/flutter/view/FlutterMain;->getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public lookupKeyForAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 153
    invoke-static {p1, p2}, Lio/flutter/view/FlutterMain;->getLookupKeyForAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public messenger()Lio/flutter/plugin/common/BinaryMessenger;
    .locals 0

    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;->this$0:Lio/flutter/app/FlutterPluginRegistry;

    .line 128
    invoke-static {p0}, Lio/flutter/app/FlutterPluginRegistry;->access$200(Lio/flutter/app/FlutterPluginRegistry;)Lio/flutter/view/FlutterNativeView;

    move-result-object p0

    return-object p0
.end method

.method public platformViewRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;
    .locals 0

    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;->this$0:Lio/flutter/app/FlutterPluginRegistry;

    .line 138
    invoke-static {p0}, Lio/flutter/app/FlutterPluginRegistry;->access$400(Lio/flutter/app/FlutterPluginRegistry;)Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object p0

    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformViewsController;->getRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    move-result-object p0

    return-object p0
.end method

.method public publish(Ljava/lang/Object;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
    .locals 2

    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;->this$0:Lio/flutter/app/FlutterPluginRegistry;

    .line 158
    invoke-static {v0}, Lio/flutter/app/FlutterPluginRegistry;->access$500(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;->pluginKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public textures()Lio/flutter/view/TextureRegistry;
    .locals 0

    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;->this$0:Lio/flutter/app/FlutterPluginRegistry;

    .line 133
    invoke-static {p0}, Lio/flutter/app/FlutterPluginRegistry;->access$300(Lio/flutter/app/FlutterPluginRegistry;)Lio/flutter/view/FlutterView;

    move-result-object p0

    return-object p0
.end method

.method public view()Lio/flutter/view/FlutterView;
    .locals 0

    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;->this$0:Lio/flutter/app/FlutterPluginRegistry;

    .line 143
    invoke-static {p0}, Lio/flutter/app/FlutterPluginRegistry;->access$300(Lio/flutter/app/FlutterPluginRegistry;)Lio/flutter/view/FlutterView;

    move-result-object p0

    return-object p0
.end method
