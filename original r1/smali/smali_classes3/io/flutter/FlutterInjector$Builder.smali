.class public final Lio/flutter/FlutterInjector$Builder;
.super Ljava/lang/Object;
.source "FlutterInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/FlutterInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/FlutterInjector$Builder$NamedThreadFactory;
    }
.end annotation


# instance fields
.field private deferredComponentManager:Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private flutterJniFactory:Lio/flutter/embedding/engine/FlutterJNI$Factory;

.field private flutterLoader:Lio/flutter/embedding/engine/loader/FlutterLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fillDefaults()V
    .locals 3

    iget-object v0, p0, Lio/flutter/FlutterInjector$Builder;->flutterJniFactory:Lio/flutter/embedding/engine/FlutterJNI$Factory;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lio/flutter/embedding/engine/FlutterJNI$Factory;

    invoke-direct {v0}, Lio/flutter/embedding/engine/FlutterJNI$Factory;-><init>()V

    iput-object v0, p0, Lio/flutter/FlutterInjector$Builder;->flutterJniFactory:Lio/flutter/embedding/engine/FlutterJNI$Factory;

    :cond_0
    iget-object v0, p0, Lio/flutter/FlutterInjector$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 165
    new-instance v0, Lio/flutter/FlutterInjector$Builder$NamedThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/flutter/FlutterInjector$Builder$NamedThreadFactory;-><init>(Lio/flutter/FlutterInjector$Builder;Lio/flutter/FlutterInjector$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/FlutterInjector$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lio/flutter/FlutterInjector$Builder;->flutterLoader:Lio/flutter/embedding/engine/loader/FlutterLoader;

    if-nez v0, :cond_2

    .line 169
    new-instance v0, Lio/flutter/embedding/engine/loader/FlutterLoader;

    iget-object v1, p0, Lio/flutter/FlutterInjector$Builder;->flutterJniFactory:Lio/flutter/embedding/engine/FlutterJNI$Factory;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterJNI$Factory;->provideFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/FlutterInjector$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/engine/loader/FlutterLoader;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lio/flutter/FlutterInjector$Builder;->flutterLoader:Lio/flutter/embedding/engine/loader/FlutterLoader;

    :cond_2
    return-void
.end method


# virtual methods
.method public build()Lio/flutter/FlutterInjector;
    .locals 7

    .line 179
    invoke-direct {p0}, Lio/flutter/FlutterInjector$Builder;->fillDefaults()V

    .line 181
    new-instance v6, Lio/flutter/FlutterInjector;

    iget-object v1, p0, Lio/flutter/FlutterInjector$Builder;->flutterLoader:Lio/flutter/embedding/engine/loader/FlutterLoader;

    iget-object v2, p0, Lio/flutter/FlutterInjector$Builder;->deferredComponentManager:Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    iget-object v3, p0, Lio/flutter/FlutterInjector$Builder;->flutterJniFactory:Lio/flutter/embedding/engine/FlutterJNI$Factory;

    iget-object v4, p0, Lio/flutter/FlutterInjector$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/flutter/FlutterInjector;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;Lio/flutter/embedding/engine/FlutterJNI$Factory;Ljava/util/concurrent/ExecutorService;Lio/flutter/FlutterInjector$1;)V

    return-object v6
.end method

.method public setDeferredComponentManager(Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;)Lio/flutter/FlutterInjector$Builder;
    .locals 0

    iput-object p1, p0, Lio/flutter/FlutterInjector$Builder;->deferredComponentManager:Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    return-object p0
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)Lio/flutter/FlutterInjector$Builder;
    .locals 0

    iput-object p1, p0, Lio/flutter/FlutterInjector$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public setFlutterJNIFactory(Lio/flutter/embedding/engine/FlutterJNI$Factory;)Lio/flutter/FlutterInjector$Builder;
    .locals 0

    iput-object p1, p0, Lio/flutter/FlutterInjector$Builder;->flutterJniFactory:Lio/flutter/embedding/engine/FlutterJNI$Factory;

    return-object p0
.end method

.method public setFlutterLoader(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/FlutterInjector$Builder;
    .locals 0

    iput-object p1, p0, Lio/flutter/FlutterInjector$Builder;->flutterLoader:Lio/flutter/embedding/engine/loader/FlutterLoader;

    return-object p0
.end method
