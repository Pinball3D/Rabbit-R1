.class public Lio/flutter/embedding/engine/dart/DartExecutor;
.super Ljava/lang/Object;
.source "DartExecutor.java"

# interfaces
.implements Lio/flutter/plugin/common/BinaryMessenger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;,
        Lio/flutter/embedding/engine/dart/DartExecutor$DefaultBinaryMessenger;,
        Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;,
        Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DartExecutor"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

.field private final dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

.field private final flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

.field private isApplicationRunning:Z

.field private final isolateChannelMessageHandler:Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;

.field private isolateServiceId:Ljava/lang/String;

.field private isolateServiceIdListener:Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z

    .line 49
    new-instance v0, Lio/flutter/embedding/engine/dart/DartExecutor$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/dart/DartExecutor$1;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateChannelMessageHandler:Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;

    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    iput-object p2, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->assetManager:Landroid/content/res/AssetManager;

    .line 63
    new-instance p2, Lio/flutter/embedding/engine/dart/DartMessenger;

    invoke-direct {p2, p1}, Lio/flutter/embedding/engine/dart/DartMessenger;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object p2, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    const-string v1, "flutter/isolate"

    .line 64
    invoke-virtual {p2, v1, v0}, Lio/flutter/embedding/engine/dart/DartMessenger;->setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;)V

    .line 65
    new-instance v0, Lio/flutter/embedding/engine/dart/DartExecutor$DefaultBinaryMessenger;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lio/flutter/embedding/engine/dart/DartExecutor$DefaultBinaryMessenger;-><init>(Lio/flutter/embedding/engine/dart/DartMessenger;Lio/flutter/embedding/engine/dart/DartExecutor$1;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 68
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/engine/dart/DartExecutor;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lio/flutter/embedding/engine/dart/DartExecutor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lio/flutter/embedding/engine/dart/DartExecutor;)Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceIdListener:Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;

    return-object p0
.end method


# virtual methods
.method public disableBufferingIncomingMessages()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    .line 251
    invoke-virtual {p0}, Lio/flutter/embedding/engine/dart/DartMessenger;->disableBufferingIncomingMessages()V

    return-void
.end method

.method public enableBufferingIncomingMessages()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    .line 244
    invoke-virtual {p0}, Lio/flutter/embedding/engine/dart/DartMessenger;->enableBufferingIncomingMessages()V

    return-void
.end method

.method public executeDartCallback(Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;)V
    .locals 9

    const-string v0, "Executing Dart callback: "

    iget-boolean v1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z

    const-string v2, "DartExecutor"

    if-eqz v1, :cond_0

    const-string p0, "Attempted to run a DartExecutor that is already running."

    .line 166
    invoke-static {v2, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "DartExecutor#executeDartCallback"

    .line 170
    invoke-static {v1}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v1

    .line 171
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 172
    iget-object v4, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;->pathToBundle:Ljava/lang/String;

    iget-object v0, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;->callbackHandle:Lio/flutter/view/FlutterCallbackInformation;

    iget-object v5, v0, Lio/flutter/view/FlutterCallbackInformation;->callbackName:Ljava/lang/String;

    iget-object v0, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;->callbackHandle:Lio/flutter/view/FlutterCallbackInformation;

    iget-object v6, v0, Lio/flutter/view/FlutterCallbackInformation;->callbackLibraryPath:Ljava/lang/String;

    iget-object v7, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;->androidAssetManager:Landroid/content/res/AssetManager;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lio/flutter/embedding/engine/FlutterJNI;->runBundleAndSnapshotFromLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/util/List;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {v1}, Lio/flutter/util/TraceSection;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_2

    .line 170
    :try_start_1
    invoke-virtual {v1}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0
.end method

.method public executeDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1, v0}, Lio/flutter/embedding/engine/dart/DartExecutor;->executeDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/util/List;)V

    return-void
.end method

.method public executeDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Executing Dart entrypoint: "

    iget-boolean v1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z

    const-string v2, "DartExecutor"

    if-eqz v1, :cond_0

    const-string p0, "Attempted to run a DartExecutor that is already running."

    .line 140
    invoke-static {v2, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "DartExecutor#executeDartEntrypoint"

    .line 144
    invoke-static {v1}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v1

    .line 145
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 146
    iget-object v4, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;->pathToBundle:Ljava/lang/String;

    iget-object v5, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;->dartEntrypointFunctionName:Ljava/lang/String;

    iget-object v6, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;->dartEntrypointLibrary:Ljava/lang/String;

    iget-object v7, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->assetManager:Landroid/content/res/AssetManager;

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lio/flutter/embedding/engine/FlutterJNI;->runBundleAndSnapshotFromLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/util/List;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {v1}, Lio/flutter/util/TraceSection;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_2

    .line 144
    :try_start_1
    invoke-virtual {v1}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0
.end method

.method public getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    return-object p0
.end method

.method public getIsolateServiceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceId:Ljava/lang/String;

    return-object p0
.end method

.method public getPendingChannelResponseCount()I
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    .line 271
    invoke-virtual {p0}, Lio/flutter/embedding/engine/dart/DartMessenger;->getPendingChannelResponseCount()I

    move-result p0

    return p0
.end method

.method public isExecutingDart()Z
    .locals 0

    iget-boolean p0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z

    return p0
.end method

.method public makeBackgroundTaskQueue(Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;)Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 198
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/BinaryMessenger;->makeBackgroundTaskQueue(Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;)Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    move-result-object p0

    return-object p0
.end method

.method public notifyLowMemoryWarning()V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 310
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 311
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->notifyLowMemoryWarning()V

    :cond_0
    return-void
.end method

.method public onAttachedToJNI()V
    .locals 2

    const-string v0, "DartExecutor"

    const-string v1, "Attached to JNI. Registering the platform message handler for this Dart execution context."

    .line 86
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    .line 90
    invoke-virtual {v0, p0}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformMessageHandler(Lio/flutter/embedding/engine/dart/PlatformMessageHandler;)V

    return-void
.end method

.method public onDetachedFromJNI()V
    .locals 2

    const-string v0, "DartExecutor"

    const-string v1, "Detached from JNI. De-registering the platform message handler for this Dart execution context."

    .line 101
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformMessageHandler(Lio/flutter/embedding/engine/dart/PlatformMessageHandler;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 206
    invoke-interface {p0, p1, p2}, Lio/flutter/plugin/common/BinaryMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 217
    invoke-interface {p0, p1, p2, p3}, Lio/flutter/plugin/common/BinaryMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V

    return-void
.end method

.method public setIsolateServiceIdListener(Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceIdListener:Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceId:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 295
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;->onIsolateServiceIdAvailable(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 226
    invoke-interface {p0, p1, p2}, Lio/flutter/plugin/common/BinaryMessenger;->setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;)V

    return-void
.end method

.method public setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 237
    invoke-interface {p0, p1, p2, p3}, Lio/flutter/plugin/common/BinaryMessenger;->setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    return-void
.end method
