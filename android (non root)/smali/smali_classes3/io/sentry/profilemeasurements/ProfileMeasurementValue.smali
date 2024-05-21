.class public final Lio/sentry/profilemeasurements/ProfileMeasurementValue;
.super Ljava/lang/Object;
.source "ProfileMeasurementValue.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/profilemeasurements/ProfileMeasurementValue$JsonKeys;,
        Lio/sentry/profilemeasurements/ProfileMeasurementValue$Deserializer;
    }
.end annotation


# instance fields
.field private relativeStartNs:Ljava/lang/String;

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

.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Number;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->relativeStartNs:Ljava/lang/String;

    .line 31
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->value:D

    return-void
.end method

.method static synthetic access$002(Lio/sentry/profilemeasurements/ProfileMeasurementValue;D)D
    .locals 0

    .line 19
    iput-wide p1, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->value:D

    return-wide p1
.end method

.method static synthetic access$102(Lio/sentry/profilemeasurements/ProfileMeasurementValue;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iput-object p1, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->relativeStartNs:Ljava/lang/String;

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

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 46
    :cond_1
    check-cast p1, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    iget-object v2, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->unknown:Ljava/util/Map;

    .line 47
    iget-object v3, p1, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->unknown:Ljava/util/Map;

    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->relativeStartNs:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->relativeStartNs:Ljava/lang/String;

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->value:D

    iget-wide p0, p1, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->value:D

    cmpl-double p0, v2, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getRelativeStartNs()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->relativeStartNs:Ljava/lang/String;

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

    iget-object p0, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->value:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->unknown:Ljava/util/Map;

    iget-object v1, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->relativeStartNs:Ljava/lang/String;

    iget-wide v2, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->value:D

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    const-string v0, "value"

    .line 68
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-wide v1, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->value:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string v0, "elapsed_since_start_ns"

    .line 69
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->relativeStartNs:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 71
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

    iget-object v2, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->unknown:Ljava/util/Map;

    .line 72
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 73
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 74
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 77
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

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

    iput-object p1, p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->unknown:Ljava/util/Map;

    return-void
.end method
