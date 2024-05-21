.class public final Lio/sentry/internal/modules/CompositeModulesLoader;
.super Lio/sentry/internal/modules/ModulesLoader;
.source "CompositeModulesLoader.java"


# instance fields
.field private final loaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/internal/modules/IModulesLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lio/sentry/ILogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/internal/modules/IModulesLoader;",
            ">;",
            "Lio/sentry/ILogger;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p2}, Lio/sentry/internal/modules/ModulesLoader;-><init>(Lio/sentry/ILogger;)V

    iput-object p1, p0, Lio/sentry/internal/modules/CompositeModulesLoader;->loaders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected loadModules()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object p0, p0, Lio/sentry/internal/modules/CompositeModulesLoader;->loaders:Ljava/util/List;

    .line 27
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/internal/modules/IModulesLoader;

    .line 28
    invoke-interface {v1}, Lio/sentry/internal/modules/IModulesLoader;->getOrLoadModules()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method
