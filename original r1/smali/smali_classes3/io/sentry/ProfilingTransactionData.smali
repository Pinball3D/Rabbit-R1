.class public final Lio/sentry/ProfilingTransactionData;
.super Ljava/lang/Object;
.source "ProfilingTransactionData.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/ProfilingTransactionData$JsonKeys;,
        Lio/sentry/ProfilingTransactionData$Deserializer;
    }
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private relativeEndCpuMs:Ljava/lang/Long;

.field private relativeEndNs:Ljava/lang/Long;

.field private relativeStartCpuMs:Ljava/lang/Long;

.field private relativeStartNs:Ljava/lang/Long;

.field private traceId:Ljava/lang/String;

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
    .locals 3

    .line 25
    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1, v1}, Lio/sentry/ProfilingTransactionData;-><init>(Lio/sentry/ITransaction;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/ITransaction;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-interface {p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/ProfilingTransactionData;->id:Ljava/lang/String;

    .line 31
    invoke-interface {p1}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/ProfilingTransactionData;->traceId:Ljava/lang/String;

    .line 32
    invoke-interface {p1}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/ProfilingTransactionData;->name:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/ProfilingTransactionData;->relativeStartNs:Ljava/lang/Long;

    iput-object p3, p0, Lio/sentry/ProfilingTransactionData;->relativeStartCpuMs:Ljava/lang/Long;

    return-void
.end method

.method static synthetic access$002(Lio/sentry/ProfilingTransactionData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/sentry/ProfilingTransactionData;->id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/ProfilingTransactionData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/sentry/ProfilingTransactionData;->traceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/ProfilingTransactionData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/sentry/ProfilingTransactionData;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/ProfilingTransactionData;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/sentry/ProfilingTransactionData;->relativeStartNs:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/ProfilingTransactionData;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/sentry/ProfilingTransactionData;->relativeEndNs:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/ProfilingTransactionData;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/sentry/ProfilingTransactionData;->relativeStartCpuMs:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/ProfilingTransactionData;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/sentry/ProfilingTransactionData;->relativeEndCpuMs:Ljava/lang/Long;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    check-cast p1, Lio/sentry/ProfilingTransactionData;

    iget-object v2, p0, Lio/sentry/ProfilingTransactionData;->id:Ljava/lang/String;

    .line 111
    iget-object v3, p1, Lio/sentry/ProfilingTransactionData;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/ProfilingTransactionData;->traceId:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/ProfilingTransactionData;->traceId:Ljava/lang/String;

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/ProfilingTransactionData;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/ProfilingTransactionData;->name:Ljava/lang/String;

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/ProfilingTransactionData;->relativeStartNs:Ljava/lang/Long;

    iget-object v3, p1, Lio/sentry/ProfilingTransactionData;->relativeStartNs:Ljava/lang/Long;

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/ProfilingTransactionData;->relativeStartCpuMs:Ljava/lang/Long;

    iget-object v3, p1, Lio/sentry/ProfilingTransactionData;->relativeStartCpuMs:Ljava/lang/Long;

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/ProfilingTransactionData;->relativeEndCpuMs:Ljava/lang/Long;

    iget-object v3, p1, Lio/sentry/ProfilingTransactionData;->relativeEndCpuMs:Ljava/lang/Long;

    .line 116
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/ProfilingTransactionData;->relativeEndNs:Ljava/lang/Long;

    iget-object v3, p1, Lio/sentry/ProfilingTransactionData;->relativeEndNs:Ljava/lang/Long;

    .line 117
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lio/sentry/ProfilingTransactionData;->unknown:Ljava/util/Map;

    iget-object p1, p1, Lio/sentry/ProfilingTransactionData;->unknown:Ljava/util/Map;

    .line 118
    invoke-static {p0, p1}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTransactionData;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTransactionData;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getRelativeEndCpuMs()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTransactionData;->relativeEndCpuMs:Ljava/lang/Long;

    return-object p0
.end method

.method public getRelativeEndNs()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTransactionData;->relativeEndNs:Ljava/lang/Long;

    return-object p0
.end method

.method public getRelativeStartCpuMs()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTransactionData;->relativeStartCpuMs:Ljava/lang/Long;

    return-object p0
.end method

.method public getRelativeStartNs()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTransactionData;->relativeStartNs:Ljava/lang/Long;

    return-object p0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTransactionData;->traceId:Ljava/lang/String;

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

    iget-object p0, p0, Lio/sentry/ProfilingTransactionData;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .locals 8

    iget-object v0, p0, Lio/sentry/ProfilingTransactionData;->id:Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/ProfilingTransactionData;->traceId:Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/ProfilingTransactionData;->name:Ljava/lang/String;

    iget-object v3, p0, Lio/sentry/ProfilingTransactionData;->relativeStartNs:Ljava/lang/Long;

    iget-object v4, p0, Lio/sentry/ProfilingTransactionData;->relativeEndNs:Ljava/lang/Long;

    iget-object v5, p0, Lio/sentry/ProfilingTransactionData;->relativeStartCpuMs:Ljava/lang/Long;

    iget-object v6, p0, Lio/sentry/ProfilingTransactionData;->relativeEndCpuMs:Ljava/lang/Long;

    iget-object v7, p0, Lio/sentry/ProfilingTransactionData;->unknown:Ljava/util/Map;

    .line 123
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public notifyFinish(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 4

    iget-object v0, p0, Lio/sentry/ProfilingTransactionData;->relativeEndNs:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/ProfilingTransactionData;->relativeEndNs:Ljava/lang/Long;

    iget-object p1, p0, Lio/sentry/ProfilingTransactionData;->relativeStartNs:Ljava/lang/Long;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/ProfilingTransactionData;->relativeStartNs:Ljava/lang/Long;

    .line 53
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/ProfilingTransactionData;->relativeEndCpuMs:Ljava/lang/Long;

    iget-object p1, p0, Lio/sentry/ProfilingTransactionData;->relativeStartCpuMs:Ljava/lang/Long;

    .line 54
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    sub-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/ProfilingTransactionData;->relativeStartCpuMs:Ljava/lang/Long;

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

    .line 149
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    const-string v0, "id"

    .line 150
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTransactionData;->id:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string v0, "trace_id"

    .line 151
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTransactionData;->traceId:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string v0, "name"

    .line 152
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTransactionData;->name:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string v0, "relative_start_ns"

    .line 153
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTransactionData;->relativeStartNs:Ljava/lang/Long;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string v0, "relative_end_ns"

    .line 154
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTransactionData;->relativeEndNs:Ljava/lang/Long;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string v0, "relative_cpu_start_ms"

    .line 155
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTransactionData;->relativeStartCpuMs:Ljava/lang/Long;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string v0, "relative_cpu_end_ms"

    .line 156
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTransactionData;->relativeEndCpuMs:Ljava/lang/Long;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/ProfilingTransactionData;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/ProfilingTransactionData;->unknown:Ljava/util/Map;

    .line 159
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 160
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 161
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 164
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTransactionData;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTransactionData;->name:Ljava/lang/String;

    return-void
.end method

.method public setRelativeEndNs(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTransactionData;->relativeEndNs:Ljava/lang/Long;

    return-void
.end method

.method public setRelativeStartNs(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTransactionData;->relativeStartNs:Ljava/lang/Long;

    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTransactionData;->traceId:Ljava/lang/String;

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

    iput-object p1, p0, Lio/sentry/ProfilingTransactionData;->unknown:Ljava/util/Map;

    return-void
.end method
