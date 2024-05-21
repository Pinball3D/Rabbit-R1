.class public Lio/flutter/embedding/engine/FlutterEngineGroupCache;
.super Ljava/lang/Object;
.source "FlutterEngineGroupCache.java"


# static fields
.field private static volatile instance:Lio/flutter/embedding/engine/FlutterEngineGroupCache;


# instance fields
.field private final cachedEngineGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/flutter/embedding/engine/FlutterEngineGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineGroupCache;->cachedEngineGroups:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lio/flutter/embedding/engine/FlutterEngineGroupCache;
    .locals 2

    sget-object v0, Lio/flutter/embedding/engine/FlutterEngineGroupCache;->instance:Lio/flutter/embedding/engine/FlutterEngineGroupCache;

    if-nez v0, :cond_1

    const-class v0, Lio/flutter/embedding/engine/FlutterEngineGroupCache;

    .line 38
    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/flutter/embedding/engine/FlutterEngineGroupCache;->instance:Lio/flutter/embedding/engine/FlutterEngineGroupCache;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lio/flutter/embedding/engine/FlutterEngineGroupCache;

    invoke-direct {v1}, Lio/flutter/embedding/engine/FlutterEngineGroupCache;-><init>()V

    sput-object v1, Lio/flutter/embedding/engine/FlutterEngineGroupCache;->instance:Lio/flutter/embedding/engine/FlutterEngineGroupCache;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lio/flutter/embedding/engine/FlutterEngineGroupCache;->instance:Lio/flutter/embedding/engine/FlutterEngineGroupCache;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineGroupCache;->cachedEngineGroups:Ljava/util/Map;

    .line 98
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineGroupCache;->cachedEngineGroups:Ljava/util/Map;

    .line 57
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngineGroup;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineGroupCache;->cachedEngineGroups:Ljava/util/Map;

    .line 67
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/engine/FlutterEngineGroup;

    return-object p0
.end method

.method public put(Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineGroup;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineGroupCache;->cachedEngineGroups:Ljava/util/Map;

    .line 79
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineGroupCache;->cachedEngineGroups:Ljava/util/Map;

    .line 81
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, p1, v0}, Lio/flutter/embedding/engine/FlutterEngineGroupCache;->put(Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineGroup;)V

    return-void
.end method
