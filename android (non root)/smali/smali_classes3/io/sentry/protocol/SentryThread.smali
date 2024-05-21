.class public final Lio/sentry/protocol/SentryThread;
.super Ljava/lang/Object;
.source "SentryThread.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/SentryThread$JsonKeys;,
        Lio/sentry/protocol/SentryThread$Deserializer;
    }
.end annotation


# instance fields
.field private crashed:Ljava/lang/Boolean;

.field private current:Ljava/lang/Boolean;

.field private daemon:Ljava/lang/Boolean;

.field private heldLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/SentryLockReason;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/Long;

.field private main:Ljava/lang/Boolean;

.field private name:Ljava/lang/String;

.field private priority:Ljava/lang/Integer;

.field private stacktrace:Lio/sentry/protocol/SentryStackTrace;

.field private state:Ljava/lang/String;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/SentryThread;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 32
    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->id:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/SentryThread;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 32
    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->priority:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/SentryThread;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/protocol/SentryThread;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->state:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/protocol/SentryThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 32
    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->crashed:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/protocol/SentryThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 32
    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->current:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/protocol/SentryThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 32
    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->daemon:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$702(Lio/sentry/protocol/SentryThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 32
    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->main:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$802(Lio/sentry/protocol/SentryThread;Lio/sentry/protocol/SentryStackTrace;)Lio/sentry/protocol/SentryStackTrace;
    .locals 0

    .line 32
    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->stacktrace:Lio/sentry/protocol/SentryStackTrace;

    return-object p1
.end method

.method static synthetic access$902(Lio/sentry/protocol/SentryThread;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 32
    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->heldLocks:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public getHeldLocks()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/SentryLockReason;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/SentryThread;->heldLocks:Ljava/util/Map;

    return-object p0
.end method

.method public getId()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryThread;->id:Ljava/lang/Long;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryThread;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPriority()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryThread;->priority:Ljava/lang/Integer;

    return-object p0
.end method

.method public getStacktrace()Lio/sentry/protocol/SentryStackTrace;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryThread;->stacktrace:Lio/sentry/protocol/SentryStackTrace;

    return-object p0
.end method

.method public getState()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryThread;->state:Ljava/lang/String;

    return-object p0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/SentryThread;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public isCrashed()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryThread;->crashed:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isCurrent()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryThread;->current:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isDaemon()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryThread;->daemon:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isMain()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryThread;->main:Ljava/lang/Boolean;

    return-object p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->id:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const-string v0, "id"

    .line 264
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryThread;->id:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->priority:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const-string v0, "priority"

    .line 267
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryThread;->priority:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "name"

    .line 270
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryThread;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->state:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "state"

    .line 273
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryThread;->state:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->crashed:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const-string v0, "crashed"

    .line 276
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryThread;->crashed:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->current:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    const-string v0, "current"

    .line 279
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryThread;->current:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->daemon:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const-string v0, "daemon"

    .line 282
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryThread;->daemon:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    :cond_6
    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->main:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    const-string v0, "main"

    .line 285
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryThread;->main:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    :cond_7
    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->stacktrace:Lio/sentry/protocol/SentryStackTrace;

    if-eqz v0, :cond_8

    const-string v0, "stacktrace"

    .line 288
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryThread;->stacktrace:Lio/sentry/protocol/SentryStackTrace;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_8
    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->heldLocks:Ljava/util/Map;

    if-eqz v0, :cond_9

    const-string v0, "held_locks"

    .line 291
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryThread;->heldLocks:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_9
    iget-object v0, p0, Lio/sentry/protocol/SentryThread;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 294
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/protocol/SentryThread;->unknown:Ljava/util/Map;

    .line 295
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 296
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 297
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 300
    :cond_a
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setCrashed(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->crashed:Ljava/lang/Boolean;

    return-void
.end method

.method public setCurrent(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->current:Ljava/lang/Boolean;

    return-void
.end method

.method public setDaemon(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->daemon:Ljava/lang/Boolean;

    return-void
.end method

.method public setHeldLocks(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/SentryLockReason;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->heldLocks:Ljava/util/Map;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->id:Ljava/lang/Long;

    return-void
.end method

.method public setMain(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->main:Ljava/lang/Boolean;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->name:Ljava/lang/String;

    return-void
.end method

.method public setPriority(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->priority:Ljava/lang/Integer;

    return-void
.end method

.method public setStacktrace(Lio/sentry/protocol/SentryStackTrace;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->stacktrace:Lio/sentry/protocol/SentryStackTrace;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->state:Ljava/lang/String;

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/protocol/SentryThread;->unknown:Ljava/util/Map;

    return-void
.end method
