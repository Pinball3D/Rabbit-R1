.class Lio/flutter/plugin/platform/PlatformViewRegistryImpl;
.super Ljava/lang/Object;
.source "PlatformViewRegistryImpl.java"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformViewRegistry;


# instance fields
.field private final viewFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/flutter/plugin/platform/PlatformViewFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewRegistryImpl;->viewFactories:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method getFactory(Ljava/lang/String;)Lio/flutter/plugin/platform/PlatformViewFactory;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformViewRegistryImpl;->viewFactories:Ljava/util/Map;

    .line 27
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/plugin/platform/PlatformViewFactory;

    return-object p0
.end method

.method public registerViewFactory(Ljava/lang/String;Lio/flutter/plugin/platform/PlatformViewFactory;)Z
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewRegistryImpl;->viewFactories:Ljava/util/Map;

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformViewRegistryImpl;->viewFactories:Ljava/util/Map;

    .line 22
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method
