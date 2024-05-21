.class public Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
.super Ljava/lang/Object;
.source "FlutterPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlutterPluginBinding"
.end annotation


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

.field private final flutterAssets:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

.field private final flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

.field private final group:Lio/flutter/embedding/engine/FlutterEngineGroup;

.field private final platformViewRegistry:Lio/flutter/plugin/platform/PlatformViewRegistry;

.field private final textureRegistry:Lio/flutter/view/TextureRegistry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/FlutterEngine;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/view/TextureRegistry;Lio/flutter/plugin/platform/PlatformViewRegistry;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;Lio/flutter/embedding/engine/FlutterEngineGroup;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    iput-object p3, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    iput-object p4, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->textureRegistry:Lio/flutter/view/TextureRegistry;

    iput-object p5, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->platformViewRegistry:Lio/flutter/plugin/platform/PlatformViewRegistry;

    iput-object p6, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->flutterAssets:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    iput-object p7, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->group:Lio/flutter/embedding/engine/FlutterEngineGroup;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    return-object p0
.end method

.method public getEngineGroup()Lio/flutter/embedding/engine/FlutterEngineGroup;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->group:Lio/flutter/embedding/engine/FlutterEngineGroup;

    return-object p0
.end method

.method public getFlutterAssets()Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->flutterAssets:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    return-object p0
.end method

.method public getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    return-object p0
.end method

.method public getPlatformViewRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->platformViewRegistry:Lio/flutter/plugin/platform/PlatformViewRegistry;

    return-object p0
.end method

.method public getTextureRegistry()Lio/flutter/view/TextureRegistry;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->textureRegistry:Lio/flutter/view/TextureRegistry;

    return-object p0
.end method
