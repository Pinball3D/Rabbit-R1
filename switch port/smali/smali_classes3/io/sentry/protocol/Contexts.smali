.class public final Lio/sentry/protocol/Contexts;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "Contexts.java"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/Contexts$Deserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Lio/sentry/JsonSerializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x380de2130187123L


# instance fields
.field private final responseLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/Contexts;->responseLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/Contexts;)V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/Contexts;->responseLock:Ljava/lang/Object;

    .line 29
    invoke-virtual {p1}, Lio/sentry/protocol/Contexts;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "app"

    .line 32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Lio/sentry/protocol/App;

    if-eqz v2, :cond_1

    .line 33
    new-instance v0, Lio/sentry/protocol/App;

    check-cast v1, Lio/sentry/protocol/App;

    invoke-direct {v0, v1}, Lio/sentry/protocol/App;-><init>(Lio/sentry/protocol/App;)V

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    goto :goto_0

    :cond_1
    const-string v2, "browser"

    .line 34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v1, Lio/sentry/protocol/Browser;

    if-eqz v2, :cond_2

    .line 35
    new-instance v0, Lio/sentry/protocol/Browser;

    check-cast v1, Lio/sentry/protocol/Browser;

    invoke-direct {v0, v1}, Lio/sentry/protocol/Browser;-><init>(Lio/sentry/protocol/Browser;)V

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setBrowser(Lio/sentry/protocol/Browser;)V

    goto :goto_0

    :cond_2
    const-string v2, "device"

    .line 36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, v1, Lio/sentry/protocol/Device;

    if-eqz v2, :cond_3

    .line 37
    new-instance v0, Lio/sentry/protocol/Device;

    check-cast v1, Lio/sentry/protocol/Device;

    invoke-direct {v0, v1}, Lio/sentry/protocol/Device;-><init>(Lio/sentry/protocol/Device;)V

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setDevice(Lio/sentry/protocol/Device;)V

    goto :goto_0

    :cond_3
    const-string v2, "os"

    .line 38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, v1, Lio/sentry/protocol/OperatingSystem;

    if-eqz v2, :cond_4

    .line 40
    new-instance v0, Lio/sentry/protocol/OperatingSystem;

    check-cast v1, Lio/sentry/protocol/OperatingSystem;

    invoke-direct {v0, v1}, Lio/sentry/protocol/OperatingSystem;-><init>(Lio/sentry/protocol/OperatingSystem;)V

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setOperatingSystem(Lio/sentry/protocol/OperatingSystem;)V

    goto :goto_0

    :cond_4
    const-string v2, "runtime"

    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v2, v1, Lio/sentry/protocol/SentryRuntime;

    if-eqz v2, :cond_5

    .line 42
    new-instance v0, Lio/sentry/protocol/SentryRuntime;

    check-cast v1, Lio/sentry/protocol/SentryRuntime;

    invoke-direct {v0, v1}, Lio/sentry/protocol/SentryRuntime;-><init>(Lio/sentry/protocol/SentryRuntime;)V

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setRuntime(Lio/sentry/protocol/SentryRuntime;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "gpu"

    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    instance-of v2, v1, Lio/sentry/protocol/Gpu;

    if-eqz v2, :cond_6

    .line 44
    new-instance v0, Lio/sentry/protocol/Gpu;

    check-cast v1, Lio/sentry/protocol/Gpu;

    invoke-direct {v0, v1}, Lio/sentry/protocol/Gpu;-><init>(Lio/sentry/protocol/Gpu;)V

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setGpu(Lio/sentry/protocol/Gpu;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "trace"

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    instance-of v2, v1, Lio/sentry/SpanContext;

    if-eqz v2, :cond_7

    .line 46
    new-instance v0, Lio/sentry/SpanContext;

    check-cast v1, Lio/sentry/SpanContext;

    invoke-direct {v0, v1}, Lio/sentry/SpanContext;-><init>(Lio/sentry/SpanContext;)V

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "response"

    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    instance-of v2, v1, Lio/sentry/protocol/Response;

    if-eqz v2, :cond_8

    .line 48
    new-instance v0, Lio/sentry/protocol/Response;

    check-cast v1, Lio/sentry/protocol/Response;

    invoke-direct {v0, v1}, Lio/sentry/protocol/Response;-><init>(Lio/sentry/protocol/Response;)V

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setResponse(Lio/sentry/protocol/Response;)V

    goto/16 :goto_0

    .line 50
    :cond_8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Lio/sentry/protocol/Contexts;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 58
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getApp()Lio/sentry/protocol/App;
    .locals 2

    const-string v0, "app"

    .line 71
    const-class v1, Lio/sentry/protocol/App;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/App;

    return-object p0
.end method

.method public getBrowser()Lio/sentry/protocol/Browser;
    .locals 2

    const-string v0, "browser"

    .line 79
    const-class v1, Lio/sentry/protocol/Browser;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/Browser;

    return-object p0
.end method

.method public getDevice()Lio/sentry/protocol/Device;
    .locals 2

    const-string v0, "device"

    .line 87
    const-class v1, Lio/sentry/protocol/Device;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/Device;

    return-object p0
.end method

.method public getGpu()Lio/sentry/protocol/Gpu;
    .locals 2

    const-string v0, "gpu"

    .line 111
    const-class v1, Lio/sentry/protocol/Gpu;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/Gpu;

    return-object p0
.end method

.method public getOperatingSystem()Lio/sentry/protocol/OperatingSystem;
    .locals 2

    const-string v0, "os"

    .line 95
    const-class v1, Lio/sentry/protocol/OperatingSystem;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/OperatingSystem;

    return-object p0
.end method

.method public getResponse()Lio/sentry/protocol/Response;
    .locals 2

    const-string v0, "response"

    .line 119
    const-class v1, Lio/sentry/protocol/Response;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/Response;

    return-object p0
.end method

.method public getRuntime()Lio/sentry/protocol/SentryRuntime;
    .locals 2

    const-string v0, "runtime"

    .line 103
    const-class v1, Lio/sentry/protocol/SentryRuntime;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/SentryRuntime;

    return-object p0
.end method

.method public getTrace()Lio/sentry/SpanContext;
    .locals 2

    const-string v0, "trace"

    .line 62
    const-class v1, Lio/sentry/SpanContext;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/SpanContext;

    return-object p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 148
    invoke-virtual {p0}, Lio/sentry/protocol/Contexts;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 149
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    invoke-virtual {p0, v1}, Lio/sentry/protocol/Contexts;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 153
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v1

    invoke-interface {v1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 156
    :cond_1
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setApp(Lio/sentry/protocol/App;)V
    .locals 1

    const-string v0, "app"

    .line 75
    invoke-virtual {p0, v0, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBrowser(Lio/sentry/protocol/Browser;)V
    .locals 1

    const-string v0, "browser"

    .line 83
    invoke-virtual {p0, v0, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDevice(Lio/sentry/protocol/Device;)V
    .locals 1

    const-string v0, "device"

    .line 91
    invoke-virtual {p0, v0, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setGpu(Lio/sentry/protocol/Gpu;)V
    .locals 1

    const-string v0, "gpu"

    .line 115
    invoke-virtual {p0, v0, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOperatingSystem(Lio/sentry/protocol/OperatingSystem;)V
    .locals 1

    const-string v0, "os"

    .line 99
    invoke-virtual {p0, v0, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setResponse(Lio/sentry/protocol/Response;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/protocol/Contexts;->responseLock:Ljava/lang/Object;

    .line 136
    monitor-enter v0

    :try_start_0
    const-string v1, "response"

    .line 137
    invoke-virtual {p0, v1, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setRuntime(Lio/sentry/protocol/SentryRuntime;)V
    .locals 1

    const-string v0, "runtime"

    .line 107
    invoke-virtual {p0, v0, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTrace(Lio/sentry/SpanContext;)V
    .locals 1

    const-string v0, "traceContext is required"

    .line 66
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "trace"

    .line 67
    invoke-virtual {p0, v0, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public withResponse(Lio/sentry/util/HintUtils$SentryConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/util/HintUtils$SentryConsumer<",
            "Lio/sentry/protocol/Response;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/protocol/Contexts;->responseLock:Ljava/lang/Object;

    .line 123
    monitor-enter v0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/protocol/Contexts;->getResponse()Lio/sentry/protocol/Response;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    invoke-interface {p1, v1}, Lio/sentry/util/HintUtils$SentryConsumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :cond_0
    new-instance v1, Lio/sentry/protocol/Response;

    invoke-direct {v1}, Lio/sentry/protocol/Response;-><init>()V

    .line 129
    invoke-virtual {p0, v1}, Lio/sentry/protocol/Contexts;->setResponse(Lio/sentry/protocol/Response;)V

    .line 130
    invoke-interface {p1, v1}, Lio/sentry/util/HintUtils$SentryConsumer;->accept(Ljava/lang/Object;)V

    .line 132
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
