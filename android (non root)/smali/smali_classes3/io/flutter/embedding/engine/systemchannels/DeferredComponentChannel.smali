.class public Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;
.super Ljava/lang/Object;
.source "DeferredComponentChannel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeferredComponentChannel"


# instance fields
.field private final channel:Lio/flutter/plugin/common/MethodChannel;

.field private componentNameToResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            ">;>;"
        }
    .end annotation
.end field

.field private deferredComponentManager:Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

.field final parsingMethodHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 4

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel$1;-><init>(Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->parsingMethodHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    .line 85
    new-instance v1, Lio/flutter/plugin/common/MethodChannel;

    const-string v2, "flutter/deferredcomponent"

    sget-object v3, Lio/flutter/plugin/common/StandardMethodCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMethodCodec;

    invoke-direct {v1, p1, v2, v3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;)V

    iput-object v1, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 87
    invoke-virtual {v1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 88
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object p1

    invoke-virtual {p1}, Lio/flutter/FlutterInjector;->deferredComponentManager()Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->deferredComponentManager:Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    .line 89
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->componentNameToResults:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;)Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->deferredComponentManager:Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    return-object p0
.end method

.method static synthetic access$100(Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;)Ljava/util/Map;
    .locals 0

    .line 28
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->componentNameToResults:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public completeInstallError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->componentNameToResults:Ljava/util/Map;

    .line 127
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->componentNameToResults:Ljava/util/Map;

    .line 128
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/common/MethodChannel$Result;

    const-string v2, "DeferredComponent Install failure"

    const/4 v3, 0x0

    .line 129
    invoke-interface {v1, v2, p2, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->componentNameToResults:Ljava/util/Map;

    .line 131
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public completeInstallSuccess(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->componentNameToResults:Ljava/util/Map;

    .line 110
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->componentNameToResults:Ljava/util/Map;

    .line 111
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v2, 0x0

    .line 112
    invoke-interface {v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->componentNameToResults:Ljava/util/Map;

    .line 114
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public setDeferredComponentManager(Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->deferredComponentManager:Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    return-void
.end method
