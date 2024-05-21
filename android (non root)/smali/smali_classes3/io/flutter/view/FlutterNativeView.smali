.class public Lio/flutter/view/FlutterNativeView;
.super Ljava/lang/Object;
.source "FlutterNativeView.java"

# interfaces
.implements Lio/flutter/plugin/common/BinaryMessenger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/FlutterNativeView$EngineLifecycleListenerImpl;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterNativeView"


# instance fields
.field private applicationIsRunning:Z

.field private final dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

.field private final flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

.field private final mContext:Landroid/content/Context;

.field private final mFlutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

.field private mFlutterView:Lio/flutter/view/FlutterView;

.field private final mPluginRegistry:Lio/flutter/app/FlutterPluginRegistry;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lio/flutter/view/FlutterNativeView;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lio/flutter/view/FlutterNativeView$1;

    invoke-direct {v0, p0}, Lio/flutter/view/FlutterNativeView$1;-><init>(Lio/flutter/view/FlutterNativeView;)V

    iput-object v0, p0, Lio/flutter/view/FlutterNativeView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    if-eqz p2, :cond_0

    const-string p2, "FlutterNativeView"

    const-string v1, "\'isBackgroundView\' is no longer supported and will be ignored"

    .line 57
    invoke-static {p2, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lio/flutter/view/FlutterNativeView;->mContext:Landroid/content/Context;

    .line 60
    new-instance p2, Lio/flutter/app/FlutterPluginRegistry;

    invoke-direct {p2, p0, p1}, Lio/flutter/app/FlutterPluginRegistry;-><init>(Lio/flutter/view/FlutterNativeView;Landroid/content/Context;)V

    iput-object p2, p0, Lio/flutter/view/FlutterNativeView;->mPluginRegistry:Lio/flutter/app/FlutterPluginRegistry;

    .line 61
    new-instance p2, Lio/flutter/embedding/engine/FlutterJNI;

    invoke-direct {p2}, Lio/flutter/embedding/engine/FlutterJNI;-><init>()V

    iput-object p2, p0, Lio/flutter/view/FlutterNativeView;->mFlutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 62
    invoke-virtual {p2, v0}, Lio/flutter/embedding/engine/FlutterJNI;->addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 63
    new-instance v0, Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lio/flutter/embedding/engine/dart/DartExecutor;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;)V

    iput-object v0, p0, Lio/flutter/view/FlutterNativeView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 64
    new-instance p1, Lio/flutter/view/FlutterNativeView$EngineLifecycleListenerImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lio/flutter/view/FlutterNativeView$EngineLifecycleListenerImpl;-><init>(Lio/flutter/view/FlutterNativeView;Lio/flutter/view/FlutterNativeView$1;)V

    invoke-virtual {p2, p1}, Lio/flutter/embedding/engine/FlutterJNI;->addEngineLifecycleListener(Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;)V

    .line 65
    invoke-direct {p0, p0}, Lio/flutter/view/FlutterNativeView;->attach(Lio/flutter/view/FlutterNativeView;)V

    .line 66
    invoke-virtual {p0}, Lio/flutter/view/FlutterNativeView;->assertAttached()V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/view/FlutterNativeView;)Lio/flutter/view/FlutterView;
    .locals 0

    .line 25
    iget-object p0, p0, Lio/flutter/view/FlutterNativeView;->mFlutterView:Lio/flutter/view/FlutterView;

    return-object p0
.end method

.method static synthetic access$200(Lio/flutter/view/FlutterNativeView;)Lio/flutter/app/FlutterPluginRegistry;
    .locals 0

    .line 25
    iget-object p0, p0, Lio/flutter/view/FlutterNativeView;->mPluginRegistry:Lio/flutter/app/FlutterPluginRegistry;

    return-object p0
.end method

.method private attach(Lio/flutter/view/FlutterNativeView;)V
    .locals 0

    iget-object p1, p0, Lio/flutter/view/FlutterNativeView;->mFlutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 182
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterJNI;->attachToNative()V

    iget-object p0, p0, Lio/flutter/view/FlutterNativeView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 183
    invoke-virtual {p0}, Lio/flutter/embedding/engine/dart/DartExecutor;->onAttachedToJNI()V

    return-void
.end method

.method public static getObservatoryUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    invoke-static {}, Lio/flutter/embedding/engine/FlutterJNI;->getVMServiceUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVMServiceUri()Ljava/lang/String;
    .locals 1

    .line 133
    invoke-static {}, Lio/flutter/embedding/engine/FlutterJNI;->getVMServiceUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public assertAttached()V
    .locals 1

    .line 103
    invoke-virtual {p0}, Lio/flutter/view/FlutterNativeView;->isAttached()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Platform view is not attached"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public attachViewAndActivity(Lio/flutter/view/FlutterView;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/FlutterNativeView;->mFlutterView:Lio/flutter/view/FlutterView;

    iget-object p0, p0, Lio/flutter/view/FlutterNativeView;->mPluginRegistry:Lio/flutter/app/FlutterPluginRegistry;

    .line 95
    invoke-virtual {p0, p1, p2}, Lio/flutter/app/FlutterPluginRegistry;->attach(Lio/flutter/view/FlutterView;Landroid/app/Activity;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/FlutterNativeView;->mPluginRegistry:Lio/flutter/app/FlutterPluginRegistry;

    .line 75
    invoke-virtual {v0}, Lio/flutter/app/FlutterPluginRegistry;->destroy()V

    iget-object v0, p0, Lio/flutter/view/FlutterNativeView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 76
    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartExecutor;->onDetachedFromJNI()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/view/FlutterNativeView;->mFlutterView:Lio/flutter/view/FlutterView;

    iget-object v0, p0, Lio/flutter/view/FlutterNativeView;->mFlutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p0, Lio/flutter/view/FlutterNativeView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 78
    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->removeIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    iget-object v0, p0, Lio/flutter/view/FlutterNativeView;->mFlutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 79
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->detachFromNativeAndReleaseResources()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/view/FlutterNativeView;->applicationIsRunning:Z

    return-void
.end method

.method public detachFromFlutterView()V
    .locals 1

    iget-object v0, p0, Lio/flutter/view/FlutterNativeView;->mPluginRegistry:Lio/flutter/app/FlutterPluginRegistry;

    .line 70
    invoke-virtual {v0}, Lio/flutter/app/FlutterPluginRegistry;->detach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/view/FlutterNativeView;->mFlutterView:Lio/flutter/view/FlutterView;

    return-void
.end method

.method public disableBufferingIncomingMessages()V
    .locals 0

    return-void
.end method

.method public enableBufferingIncomingMessages()V
    .locals 0

    return-void
.end method

.method public getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/FlutterNativeView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    return-object p0
.end method

.method getFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/FlutterNativeView;->mFlutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    return-object p0
.end method

.method public getPluginRegistry()Lio/flutter/app/FlutterPluginRegistry;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/FlutterNativeView;->mPluginRegistry:Lio/flutter/app/FlutterPluginRegistry;

    return-object p0
.end method

.method public isApplicationRunning()Z
    .locals 0

    iget-boolean p0, p0, Lio/flutter/view/FlutterNativeView;->applicationIsRunning:Z

    return p0
.end method

.method public isAttached()Z
    .locals 0

    iget-object p0, p0, Lio/flutter/view/FlutterNativeView;->mFlutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 99
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result p0

    return p0
.end method

.method public makeBackgroundTaskQueue(Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;)Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/FlutterNativeView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 139
    invoke-virtual {p0}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/BinaryMessenger;->makeBackgroundTaskQueue(Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;)Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    move-result-object p0

    return-object p0
.end method

.method public runFromBundle(Lio/flutter/view/FlutterRunArguments;)V
    .locals 7

    .line 107
    iget-object v0, p1, Lio/flutter/view/FlutterRunArguments;->entrypoint:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lio/flutter/view/FlutterNativeView;->assertAttached()V

    iget-boolean v0, p0, Lio/flutter/view/FlutterNativeView;->applicationIsRunning:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lio/flutter/view/FlutterNativeView;->mFlutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 113
    iget-object v2, p1, Lio/flutter/view/FlutterRunArguments;->bundlePath:Ljava/lang/String;

    iget-object v3, p1, Lio/flutter/view/FlutterRunArguments;->entrypoint:Ljava/lang/String;

    iget-object v4, p1, Lio/flutter/view/FlutterRunArguments;->libraryPath:Ljava/lang/String;

    iget-object p1, p0, Lio/flutter/view/FlutterNativeView;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const/4 v6, 0x0

    .line 113
    invoke-virtual/range {v1 .. v6}, Lio/flutter/embedding/engine/FlutterJNI;->runBundleAndSnapshotFromLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/util/List;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/flutter/view/FlutterNativeView;->applicationIsRunning:Z

    return-void

    .line 112
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "This Flutter engine instance is already running an application"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 108
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "An entrypoint must be specified"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/view/FlutterNativeView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 145
    invoke-virtual {p0}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lio/flutter/plugin/common/BinaryMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
    .locals 1

    .line 151
    invoke-virtual {p0}, Lio/flutter/view/FlutterNativeView;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "FlutterView.send called on a detached view, channel="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlutterNativeView"

    invoke-static {p1, p0}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lio/flutter/view/FlutterNativeView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 156
    invoke-virtual {p0}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lio/flutter/plugin/common/BinaryMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V

    return-void
.end method

.method public setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/view/FlutterNativeView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 162
    invoke-virtual {p0}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lio/flutter/plugin/common/BinaryMessenger;->setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;)V

    return-void
.end method

.method public setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/view/FlutterNativeView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 168
    invoke-virtual {p0}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lio/flutter/plugin/common/BinaryMessenger;->setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    return-void
.end method
