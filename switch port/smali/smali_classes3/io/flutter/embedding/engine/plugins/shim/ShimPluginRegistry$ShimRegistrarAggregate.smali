.class Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;
.super Ljava/lang/Object;
.source "ShimPluginRegistry.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShimRegistrarAggregate"
.end annotation


# instance fields
.field private activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private flutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

.field private final shimRegistrars:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/embedding/engine/plugins/shim/ShimRegistrar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;->shimRegistrars:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$1;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;-><init>()V

    return-void
.end method


# virtual methods
.method public addPlugin(Lio/flutter/embedding/engine/plugins/shim/ShimRegistrar;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;->shimRegistrars:Ljava/util/Set;

    .line 94
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;->flutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/plugins/shim/ShimRegistrar;->onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V

    :cond_0
    iget-object p0, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    if-eqz p0, :cond_1

    .line 100
    invoke-virtual {p1, p0}, Lio/flutter/embedding/engine/plugins/shim/ShimRegistrar;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    :cond_1
    return-void
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    iput-object p1, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    iget-object p0, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;->shimRegistrars:Ljava/util/Set;

    .line 124
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/engine/plugins/shim/ShimRegistrar;

    .line 125
    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/plugins/shim/ShimRegistrar;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    iput-object p1, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;->flutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    iget-object p0, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;->shimRegistrars:Ljava/util/Set;

    .line 107
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/engine/plugins/shim/ShimRegistrar;

    .line 108
    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/plugins/shim/ShimRegistrar;->onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;->shimRegistrars:Ljava/util/Set;

    .line 147
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/plugins/shim/ShimRegistrar;

    .line 148
    invoke-virtual {v1}, Lio/flutter/embedding/engine/plugins/shim/ShimRegistrar;->onDetachedFromActivity()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;->shimRegistrars:Ljava/util/Set;

    .line 131
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/plugins/shim/ShimRegistrar;

    .line 132
    invoke-virtual {v1}, Lio/flutter/embedding/engine/plugins/shim/ShimRegistrar;->onDetachedFromActivity()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;->shimRegistrars:Ljava/util/Set;

    .line 114
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/plugins/shim/ShimRegistrar;

    .line 115
    invoke-virtual {v1, p1}, Lio/flutter/embedding/engine/plugins/shim/ShimRegistrar;->onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;->flutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    iput-object p1, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    iput-object p1, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    iget-object p0, p0, Lio/flutter/embedding/engine/plugins/shim/ShimPluginRegistry$ShimRegistrarAggregate;->shimRegistrars:Ljava/util/Set;

    .line 140
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/engine/plugins/shim/ShimRegistrar;

    .line 141
    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/plugins/shim/ShimRegistrar;->onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    goto :goto_0

    :cond_0
    return-void
.end method
