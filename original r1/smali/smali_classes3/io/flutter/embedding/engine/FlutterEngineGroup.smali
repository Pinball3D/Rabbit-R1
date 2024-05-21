.class public Lio/flutter/embedding/engine/FlutterEngineGroup;
.super Ljava/lang/Object;
.source "FlutterEngineGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/FlutterEngineGroup$Options;
    }
.end annotation


# instance fields
.field final activeEngines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/embedding/engine/FlutterEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/engine/FlutterEngineGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineGroup;->activeEngines:Ljava/util/List;

    .line 60
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object p0

    invoke-virtual {p0}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->startInitialization(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->ensureInitializationComplete(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createAndRunDefaultEngine(Landroid/content/Context;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, p1, v0}, Lio/flutter/embedding/engine/FlutterEngineGroup;->createAndRunEngine(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object p0

    return-object p0
.end method

.method public createAndRunEngine(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, p1, p2, v0}, Lio/flutter/embedding/engine/FlutterEngineGroup;->createAndRunEngine(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object p0

    return-object p0
.end method

.method public createAndRunEngine(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 1

    .line 121
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    invoke-direct {v0, p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v0, p2}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->setDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;)Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->setInitialRoute(Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngineGroup$Options;

    move-result-object p1

    .line 121
    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/FlutterEngineGroup;->createAndRunEngine(Lio/flutter/embedding/engine/FlutterEngineGroup$Options;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object p0

    return-object p0
.end method

.method public createAndRunEngine(Lio/flutter/embedding/engine/FlutterEngineGroup$Options;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 8

    .line 142
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 143
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->getDartEntrypoint()Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->getInitialRoute()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->getDartEntrypointArgs()Ljava/util/List;

    move-result-object v4

    .line 146
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    new-instance v2, Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-direct {v2}, Lio/flutter/plugin/platform/PlatformViewsController;-><init>()V

    :goto_0
    move-object v5, v2

    .line 149
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->getAutomaticallyRegisterPlugins()Z

    move-result v6

    .line 150
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$Options;->getWaitForRestorationData()Z

    move-result v7

    if-nez v0, :cond_1

    .line 153
    invoke-static {}, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;->createDefault()Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;

    move-result-object p1

    move-object v2, p1

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    iget-object p1, p0, Lio/flutter/embedding/engine/FlutterEngineGroup;->activeEngines:Ljava/util/List;

    .line 156
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 158
    invoke-virtual {p0, v1, v5, v6, v7}, Lio/flutter/embedding/engine/FlutterEngineGroup;->createEngine(Landroid/content/Context;Lio/flutter/plugin/platform/PlatformViewsController;ZZ)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object p1

    if-eqz v3, :cond_2

    .line 164
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getNavigationChannel()Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->setInitialRoute(Ljava/lang/String;)V

    .line 166
    :cond_2
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lio/flutter/embedding/engine/dart/DartExecutor;->executeDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/util/List;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lio/flutter/embedding/engine/FlutterEngineGroup;->activeEngines:Ljava/util/List;

    const/4 v0, 0x0

    .line 170
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lio/flutter/embedding/engine/FlutterEngine;

    .line 171
    invoke-virtual/range {v0 .. v7}, Lio/flutter/embedding/engine/FlutterEngine;->spawn(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/lang/String;Ljava/util/List;Lio/flutter/plugin/platform/PlatformViewsController;ZZ)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object p1

    :goto_2
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineGroup;->activeEngines:Ljava/util/List;

    .line 181
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineGroup$1;

    invoke-direct {v0, p0, p1}, Lio/flutter/embedding/engine/FlutterEngineGroup$1;-><init>(Lio/flutter/embedding/engine/FlutterEngineGroup;Lio/flutter/embedding/engine/FlutterEngine;)V

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/FlutterEngine;->addEngineLifecycleListener(Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;)V

    return-object p1
.end method

.method createEngine(Landroid/content/Context;Lio/flutter/plugin/platform/PlatformViewsController;ZZ)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 10

    .line 206
    new-instance v9, Lio/flutter/embedding/engine/FlutterEngine;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;ZZLio/flutter/embedding/engine/FlutterEngineGroup;)V

    return-object v9
.end method
