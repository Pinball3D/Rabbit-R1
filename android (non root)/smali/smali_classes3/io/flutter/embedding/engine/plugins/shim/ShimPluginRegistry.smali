.class public Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry;
.super Ljava/lang/Object;
.source "ShimPluginRegistry.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShimPluginRegistry"


# instance fields
.field private final flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

.field private final pluginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final shimRegistrarAggregate:Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry;->pluginMap:Ljava/util/Map;

    iput-object p1, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 47
    new-instance v0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;-><init>(Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$1;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry;->shimRegistrarAggregate:Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;

    .line 48
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    move-result-object p0

    invoke-interface {p0, v0}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V

    return-void
.end method


# virtual methods
.method public hasPlugin(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry;->pluginMap:Ljava/util/Map;

    .line 66
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public registrarFor(Ljava/lang/String;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating plugin Registrar for \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShimPluginRegistry"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry;->pluginMap:Ljava/util/Map;

    .line 55
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry;->pluginMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 58
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v0, Lio/flutter/embedding/engine/plugins/shim/ShimRegistrar;

    iget-object v1, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry;->pluginMap:Ljava/util/Map;

    invoke-direct {v0, p1, v1}, Lio/flutter/embedding/engine/plugins/shim/ShimRegistrar;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p0, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry;->shimRegistrarAggregate:Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;

    .line 60
    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;->addPlugin(Lio/flutter/embedding/engine/plugins/shim/ShimRegistrar;)V

    return-object v0

    .line 56
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Plugin key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is already in use"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public valuePublishedByPlugin(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object p0, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry;->pluginMap:Ljava/util/Map;

    .line 72
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
