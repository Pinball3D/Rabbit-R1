.class public final Lio/sentry/SentryEnvelopeHeader;
.super Ljava/lang/Object;
.source "SentryEnvelopeHeader.java"

# interfaces
.implements Lio/sentry/JsonSerializable;
.implements Lio/sentry/JsonUnknown;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryEnvelopeHeader$JsonKeys;,
        Lio/sentry/SentryEnvelopeHeader$Deserializer;
    }
.end annotation


# instance fields
.field private final eventId:Lio/sentry/protocol/SentryId;

.field private final sdkVersion:Lio/sentry/protocol/SdkVersion;

.field private sentAt:Ljava/util/Date;

.field private final traceContext:Lio/sentry/TraceContext;

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
    .locals 1

    .line 47
    new-instance v0, Lio/sentry/protocol/SentryId;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId;-><init>()V

    invoke-direct {p0, v0}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/TraceContext;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/TraceContext;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryEnvelopeHeader;->eventId:Lio/sentry/protocol/SentryId;

    iput-object p2, p0, Lio/sentry/SentryEnvelopeHeader;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    iput-object p3, p0, Lio/sentry/SentryEnvelopeHeader;->traceContext:Lio/sentry/TraceContext;

    return-void
.end method


# virtual methods
.method public getEventId()Lio/sentry/protocol/SentryId;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryEnvelopeHeader;->eventId:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public getSdkVersion()Lio/sentry/protocol/SdkVersion;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryEnvelopeHeader;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    return-object p0
.end method

.method public getSentAt()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryEnvelopeHeader;->sentAt:Ljava/util/Date;

    return-object p0
.end method

.method public getTraceContext()Lio/sentry/TraceContext;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryEnvelopeHeader;->traceContext:Lio/sentry/TraceContext;

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

    iget-object p0, p0, Lio/sentry/SentryEnvelopeHeader;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/SentryEnvelopeHeader;->eventId:Lio/sentry/protocol/SentryId;

    if-eqz v0, :cond_0

    const-string v0, "event_id"

    .line 96
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryEnvelopeHeader;->eventId:Lio/sentry/protocol/SentryId;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_0
    iget-object v0, p0, Lio/sentry/SentryEnvelopeHeader;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    if-eqz v0, :cond_1

    const-string v0, "sdk"

    .line 99
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryEnvelopeHeader;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_1
    iget-object v0, p0, Lio/sentry/SentryEnvelopeHeader;->traceContext:Lio/sentry/TraceContext;

    if-eqz v0, :cond_2

    const-string v0, "trace"

    .line 102
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryEnvelopeHeader;->traceContext:Lio/sentry/TraceContext;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_2
    iget-object v0, p0, Lio/sentry/SentryEnvelopeHeader;->sentAt:Ljava/util/Date;

    if-eqz v0, :cond_3

    const-string v0, "sent_at"

    .line 105
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryEnvelopeHeader;->sentAt:Ljava/util/Date;

    invoke-static {v1}, Lio/sentry/DateUtils;->getTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_3
    iget-object v0, p0, Lio/sentry/SentryEnvelopeHeader;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 108
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/SentryEnvelopeHeader;->unknown:Ljava/util/Map;

    .line 109
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 110
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 111
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 114
    :cond_4
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setSentAt(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryEnvelopeHeader;->sentAt:Ljava/util/Date;

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

    iput-object p1, p0, Lio/sentry/SentryEnvelopeHeader;->unknown:Ljava/util/Map;

    return-void
.end method
