.class public Lio/flutter/embedding/engine/FlutterEngineCache;
.super Ljava/lang/Object;
.source "FlutterEngineCache.java"


# static fields
.field private static instance:Lio/flutter/embedding/engine/FlutterEngineCache;


# instance fields
.field private final cachedEngines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/flutter/embedding/engine/FlutterEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineCache;->cachedEngines:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lio/flutter/embedding/engine/FlutterEngineCache;
    .locals 1

    sget-object v0, Lio/flutter/embedding/engine/FlutterEngineCache;->instance:Lio/flutter/embedding/engine/FlutterEngineCache;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngineCache;

    invoke-direct {v0}, Lio/flutter/embedding/engine/FlutterEngineCache;-><init>()V

    sput-object v0, Lio/flutter/embedding/engine/FlutterEngineCache;->instance:Lio/flutter/embedding/engine/FlutterEngineCache;

    :cond_0
    sget-object v0, Lio/flutter/embedding/engine/FlutterEngineCache;->instance:Lio/flutter/embedding/engine/FlutterEngineCache;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineCache;->cachedEngines:Ljava/util/Map;

    .line 97
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineCache;->cachedEngines:Ljava/util/Map;

    .line 55
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineCache;->cachedEngines:Ljava/util/Map;

    .line 65
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/engine/FlutterEngine;

    return-object p0
.end method

.method public put(Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineCache;->cachedEngines:Ljava/util/Map;

    .line 78
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineCache;->cachedEngines:Ljava/util/Map;

    .line 80
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p1, v0}, Lio/flutter/embedding/engine/FlutterEngineCache;->put(Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngine;)V

    return-void
.end method
