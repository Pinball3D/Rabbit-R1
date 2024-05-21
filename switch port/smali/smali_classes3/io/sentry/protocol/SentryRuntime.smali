.class public final Lio/sentry/protocol/SentryRuntime;
.super Ljava/lang/Object;
.source "SentryRuntime.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/SentryRuntime$JsonKeys;,
        Lio/sentry/protocol/SentryRuntime$Deserializer;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "runtime"


# instance fields
.field private name:Ljava/lang/String;

.field private rawDescription:Ljava/lang/String;

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

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/SentryRuntime;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v0, p1, Lio/sentry/protocol/SentryRuntime;->name:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/SentryRuntime;->name:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lio/sentry/protocol/SentryRuntime;->version:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/SentryRuntime;->version:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lio/sentry/protocol/SentryRuntime;->rawDescription:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/SentryRuntime;->rawDescription:Ljava/lang/String;

    .line 39
    iget-object p1, p1, Lio/sentry/protocol/SentryRuntime;->unknown:Ljava/util/Map;

    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/SentryRuntime;->unknown:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/SentryRuntime;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/SentryRuntime;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/SentryRuntime;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/SentryRuntime;->version:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/SentryRuntime;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/SentryRuntime;->rawDescription:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryRuntime;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getRawDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryRuntime;->rawDescription:Ljava/lang/String;

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

    iget-object p0, p0, Lio/sentry/protocol/SentryRuntime;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryRuntime;->version:Ljava/lang/String;

    return-object p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/protocol/SentryRuntime;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "name"

    .line 82
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryRuntime;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/SentryRuntime;->version:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "version"

    .line 85
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryRuntime;->version:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/SentryRuntime;->rawDescription:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "raw_description"

    .line 88
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryRuntime;->rawDescription:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/SentryRuntime;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 91
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/protocol/SentryRuntime;->unknown:Ljava/util/Map;

    .line 92
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 93
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 94
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 97
    :cond_3
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryRuntime;->name:Ljava/lang/String;

    return-void
.end method

.method public setRawDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryRuntime;->rawDescription:Ljava/lang/String;

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

    iput-object p1, p0, Lio/sentry/protocol/SentryRuntime;->unknown:Ljava/util/Map;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SentryRuntime;->version:Ljava/lang/String;

    return-void
.end method
