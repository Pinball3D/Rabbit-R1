.class public final Lio/sentry/SentryEvent;
.super Lio/sentry/SentryBaseEvent;
.source "SentryEvent.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryEvent$JsonKeys;,
        Lio/sentry/SentryEvent$Deserializer;
    }
.end annotation


# instance fields
.field private exception:Lio/sentry/SentryValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/SentryValues<",
            "Lio/sentry/protocol/SentryException;",
            ">;"
        }
    .end annotation
.end field

.field private fingerprint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private level:Lio/sentry/SentryLevel;

.field private logger:Ljava/lang/String;

.field private message:Lio/sentry/protocol/Message;

.field private modules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private threads:Lio/sentry/SentryValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/SentryValues<",
            "Lio/sentry/protocol/SentryThread;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:Ljava/util/Date;

.field private transaction:Ljava/lang/String;

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
    .locals 2

    .line 102
    new-instance v0, Lio/sentry/protocol/SentryId;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId;-><init>()V

    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/sentry/SentryEvent;-><init>(Lio/sentry/protocol/SentryId;Ljava/util/Date;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/SentryId;Ljava/util/Date;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lio/sentry/SentryBaseEvent;-><init>(Lio/sentry/protocol/SentryId;)V

    iput-object p2, p0, Lio/sentry/SentryEvent;->timestamp:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lio/sentry/SentryEvent;-><init>()V

    .line 98
    iput-object p1, p0, Lio/sentry/SentryEvent;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    .line 107
    new-instance v0, Lio/sentry/protocol/SentryId;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId;-><init>()V

    invoke-direct {p0, v0, p1}, Lio/sentry/SentryEvent;-><init>(Lio/sentry/protocol/SentryId;Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$002(Lio/sentry/SentryEvent;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/SentryEvent;->timestamp:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/SentryEvent;Lio/sentry/protocol/Message;)Lio/sentry/protocol/Message;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/SentryEvent;->message:Lio/sentry/protocol/Message;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/SentryEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/SentryEvent;->logger:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/SentryEvent;Lio/sentry/SentryValues;)Lio/sentry/SentryValues;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/SentryEvent;->threads:Lio/sentry/SentryValues;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/SentryEvent;Lio/sentry/SentryValues;)Lio/sentry/SentryValues;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/SentryEvent;->exception:Lio/sentry/SentryValues;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/SentryEvent;Lio/sentry/SentryLevel;)Lio/sentry/SentryLevel;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/SentryEvent;->level:Lio/sentry/SentryLevel;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/SentryEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/SentryEvent;->transaction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lio/sentry/SentryEvent;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/SentryEvent;->fingerprint:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$802(Lio/sentry/SentryEvent;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/SentryEvent;->modules:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public getExceptions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryException;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryEvent;->exception:Lio/sentry/SentryValues;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryValues;->getValues()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getFingerprints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryEvent;->fingerprint:Ljava/util/List;

    return-object p0
.end method

.method public getLevel()Lio/sentry/SentryLevel;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryEvent;->level:Lio/sentry/SentryLevel;

    return-object p0
.end method

.method public getLogger()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryEvent;->logger:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Lio/sentry/protocol/Message;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryEvent;->message:Lio/sentry/protocol/Message;

    return-object p0
.end method

.method public getModule(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryEvent;->modules:Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 203
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getModules()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryEvent;->modules:Ljava/util/Map;

    return-object p0
.end method

.method public getThreads()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryEvent;->threads:Lio/sentry/SentryValues;

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0}, Lio/sentry/SentryValues;->getValues()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryEvent;->timestamp:Ljava/util/Date;

    .line 112
    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public getTransaction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryEvent;->transaction:Ljava/lang/String;

    return-object p0
.end method

.method public getUnhandledException()Lio/sentry/protocol/SentryException;
    .locals 2

    iget-object p0, p0, Lio/sentry/SentryEvent;->exception:Lio/sentry/SentryValues;

    if-eqz p0, :cond_1

    .line 219
    invoke-virtual {p0}, Lio/sentry/SentryValues;->getValues()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/SentryException;

    .line 220
    invoke-virtual {v0}, Lio/sentry/protocol/SentryException;->getMechanism()Lio/sentry/protocol/Mechanism;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v0}, Lio/sentry/protocol/SentryException;->getMechanism()Lio/sentry/protocol/Mechanism;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/Mechanism;->isHandled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v0}, Lio/sentry/protocol/SentryException;->getMechanism()Lio/sentry/protocol/Mechanism;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/Mechanism;->isHandled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

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

    iget-object p0, p0, Lio/sentry/SentryEvent;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public isCrashed()Z
    .locals 0

    .line 214
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->getUnhandledException()Lio/sentry/protocol/SentryException;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isErrored()Z
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryEvent;->exception:Lio/sentry/SentryValues;

    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {p0}, Lio/sentry/SentryValues;->getValues()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeModule(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryEvent;->modules:Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 197
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    const-string v0, "timestamp"

    .line 257
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryEvent;->timestamp:Ljava/util/Date;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/SentryEvent;->message:Lio/sentry/protocol/Message;

    if-eqz v0, :cond_0

    const-string v0, "message"

    .line 259
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryEvent;->message:Lio/sentry/protocol/Message;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_0
    iget-object v0, p0, Lio/sentry/SentryEvent;->logger:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "logger"

    .line 262
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryEvent;->logger:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_1
    iget-object v0, p0, Lio/sentry/SentryEvent;->threads:Lio/sentry/SentryValues;

    const-string v1, "values"

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {v0}, Lio/sentry/SentryValues;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "threads"

    .line 265
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 266
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 267
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/SentryEvent;->threads:Lio/sentry/SentryValues;

    invoke-virtual {v2}, Lio/sentry/SentryValues;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 268
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    :cond_2
    iget-object v0, p0, Lio/sentry/SentryEvent;->exception:Lio/sentry/SentryValues;

    if-eqz v0, :cond_3

    .line 270
    invoke-virtual {v0}, Lio/sentry/SentryValues;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "exception"

    .line 271
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 272
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 273
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryEvent;->exception:Lio/sentry/SentryValues;

    invoke-virtual {v1}, Lio/sentry/SentryValues;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 274
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    :cond_3
    iget-object v0, p0, Lio/sentry/SentryEvent;->level:Lio/sentry/SentryLevel;

    if-eqz v0, :cond_4

    const-string v0, "level"

    .line 277
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryEvent;->level:Lio/sentry/SentryLevel;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_4
    iget-object v0, p0, Lio/sentry/SentryEvent;->transaction:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "transaction"

    .line 280
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryEvent;->transaction:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_5
    iget-object v0, p0, Lio/sentry/SentryEvent;->fingerprint:Ljava/util/List;

    if-eqz v0, :cond_6

    const-string v0, "fingerprint"

    .line 283
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryEvent;->fingerprint:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_6
    iget-object v0, p0, Lio/sentry/SentryEvent;->modules:Ljava/util/Map;

    if-eqz v0, :cond_7

    const-string v0, "modules"

    .line 286
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryEvent;->modules:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 288
    :cond_7
    new-instance v0, Lio/sentry/SentryBaseEvent$Serializer;

    invoke-direct {v0}, Lio/sentry/SentryBaseEvent$Serializer;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/SentryBaseEvent$Serializer;->serialize(Lio/sentry/SentryBaseEvent;Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    iget-object v0, p0, Lio/sentry/SentryEvent;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 290
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/SentryEvent;->unknown:Ljava/util/Map;

    .line 291
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 292
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 293
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 296
    :cond_8
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setExceptions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryException;",
            ">;)V"
        }
    .end annotation

    .line 152
    new-instance v0, Lio/sentry/SentryValues;

    invoke-direct {v0, p1}, Lio/sentry/SentryValues;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lio/sentry/SentryEvent;->exception:Lio/sentry/SentryValues;

    return-void
.end method

.method public setFingerprints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/sentry/SentryEvent;->fingerprint:Ljava/util/List;

    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryEvent;->level:Lio/sentry/SentryLevel;

    return-void
.end method

.method public setLogger(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryEvent;->logger:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Lio/sentry/protocol/Message;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryEvent;->message:Lio/sentry/protocol/Message;

    return-void
.end method

.method public setModule(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/SentryEvent;->modules:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryEvent;->modules:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lio/sentry/SentryEvent;->modules:Ljava/util/Map;

    .line 192
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setModules(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 185
    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->newHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/SentryEvent;->modules:Ljava/util/Map;

    return-void
.end method

.method public setThreads(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;)V"
        }
    .end annotation

    .line 144
    new-instance v0, Lio/sentry/SentryValues;

    invoke-direct {v0, p1}, Lio/sentry/SentryValues;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lio/sentry/SentryEvent;->threads:Lio/sentry/SentryValues;

    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryEvent;->timestamp:Ljava/util/Date;

    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryEvent;->transaction:Ljava/lang/String;

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

    iput-object p1, p0, Lio/sentry/SentryEvent;->unknown:Ljava/util/Map;

    return-void
.end method
