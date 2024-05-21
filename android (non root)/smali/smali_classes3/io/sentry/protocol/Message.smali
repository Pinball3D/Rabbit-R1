.class public final Lio/sentry/protocol/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/Message$JsonKeys;,
        Lio/sentry/protocol/Message$Deserializer;
    }
.end annotation


# instance fields
.field private formatted:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.method static synthetic access$002(Lio/sentry/protocol/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lio/sentry/protocol/Message;->formatted:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lio/sentry/protocol/Message;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/Message;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 32
    iput-object p1, p0, Lio/sentry/protocol/Message;->params:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getFormatted()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/Message;->formatted:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/Message;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getParams()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/Message;->params:Ljava/util/List;

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

    iget-object p0, p0, Lio/sentry/protocol/Message;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/protocol/Message;->formatted:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "formatted"

    .line 101
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Message;->formatted:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/Message;->message:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "message"

    .line 104
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Message;->message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/Message;->params:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 106
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "params"

    .line 107
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Message;->params:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/Message;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 110
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

    iget-object v2, p0, Lio/sentry/protocol/Message;->unknown:Ljava/util/Map;

    .line 111
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 112
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 113
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 116
    :cond_3
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setFormatted(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/Message;->formatted:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/Message;->message:Ljava/lang/String;

    return-void
.end method

.method public setParams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->newArrayList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/Message;->params:Ljava/util/List;

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

    iput-object p1, p0, Lio/sentry/protocol/Message;->unknown:Ljava/util/Map;

    return-void
.end method
