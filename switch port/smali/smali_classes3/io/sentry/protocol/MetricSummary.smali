.class public final Lio/sentry/protocol/MetricSummary;
.super Ljava/lang/Object;
.source "MetricSummary.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/MetricSummary$JsonKeys;,
        Lio/sentry/protocol/MetricSummary$Deserializer;
    }
.end annotation


# instance fields
.field private count:I

.field private max:D

.field private min:D

.field private sum:D

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p8, p0, Lio/sentry/protocol/MetricSummary;->tags:Ljava/util/Map;

    iput-wide p1, p0, Lio/sentry/protocol/MetricSummary;->min:D

    iput-wide p3, p0, Lio/sentry/protocol/MetricSummary;->max:D

    iput p7, p0, Lio/sentry/protocol/MetricSummary;->count:I

    iput-wide p5, p0, Lio/sentry/protocol/MetricSummary;->sum:D

    const/4 p1, 0x0

    iput-object p1, p0, Lio/sentry/protocol/MetricSummary;->unknown:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/MetricSummary;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 18
    iput-object p1, p0, Lio/sentry/protocol/MetricSummary;->tags:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget p0, p0, Lio/sentry/protocol/MetricSummary;->count:I

    return p0
.end method

.method public getMax()D
    .locals 2

    iget-wide v0, p0, Lio/sentry/protocol/MetricSummary;->max:D

    return-wide v0
.end method

.method public getMin()D
    .locals 2

    iget-wide v0, p0, Lio/sentry/protocol/MetricSummary;->min:D

    return-wide v0
.end method

.method public getSum()D
    .locals 2

    iget-wide v0, p0, Lio/sentry/protocol/MetricSummary;->sum:D

    return-wide v0
.end method

.method public getTags()Ljava/util/Map;
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

    iget-object p0, p0, Lio/sentry/protocol/MetricSummary;->tags:Ljava/util/Map;

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

    iget-object p0, p0, Lio/sentry/protocol/MetricSummary;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    const-string v0, "min"

    .line 108
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-wide v1, p0, Lio/sentry/protocol/MetricSummary;->min:D

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(D)Lio/sentry/ObjectWriter;

    const-string v0, "max"

    .line 109
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-wide v1, p0, Lio/sentry/protocol/MetricSummary;->max:D

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(D)Lio/sentry/ObjectWriter;

    const-string v0, "sum"

    .line 110
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-wide v1, p0, Lio/sentry/protocol/MetricSummary;->sum:D

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(D)Lio/sentry/ObjectWriter;

    const-string v0, "count"

    .line 111
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/protocol/MetricSummary;->count:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/protocol/MetricSummary;->tags:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v0, "tags"

    .line 113
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    iget-object p0, p0, Lio/sentry/protocol/MetricSummary;->tags:Ljava/util/Map;

    .line 114
    invoke-interface {p1, p2, p0}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 116
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lio/sentry/protocol/MetricSummary;->count:I

    return-void
.end method

.method public setMax(D)V
    .locals 0

    iput-wide p1, p0, Lio/sentry/protocol/MetricSummary;->max:D

    return-void
.end method

.method public setMin(D)V
    .locals 0

    iput-wide p1, p0, Lio/sentry/protocol/MetricSummary;->min:D

    return-void
.end method

.method public setSum(D)V
    .locals 0

    iput-wide p1, p0, Lio/sentry/protocol/MetricSummary;->sum:D

    return-void
.end method

.method public setTags(Ljava/util/Map;)V
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

    iput-object p1, p0, Lio/sentry/protocol/MetricSummary;->tags:Ljava/util/Map;

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

    iput-object p1, p0, Lio/sentry/protocol/MetricSummary;->unknown:Ljava/util/Map;

    return-void
.end method
