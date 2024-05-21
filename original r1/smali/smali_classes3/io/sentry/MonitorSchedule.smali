.class public final Lio/sentry/MonitorSchedule;
.super Ljava/lang/Object;
.source "MonitorSchedule.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/MonitorSchedule$JsonKeys;,
        Lio/sentry/MonitorSchedule$Deserializer;
    }
.end annotation


# instance fields
.field private type:Ljava/lang/String;

.field private unit:Ljava/lang/String;

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

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/MonitorSchedule;->type:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/MonitorSchedule;->value:Ljava/lang/String;

    iput-object p3, p0, Lio/sentry/MonitorSchedule;->unit:Ljava/lang/String;

    return-void
.end method

.method public static crontab(Ljava/lang/String;)Lio/sentry/MonitorSchedule;
    .locals 3

    .line 15
    new-instance v0, Lio/sentry/MonitorSchedule;

    sget-object v1, Lio/sentry/MonitorScheduleType;->CRONTAB:Lio/sentry/MonitorScheduleType;

    invoke-virtual {v1}, Lio/sentry/MonitorScheduleType;->apiName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lio/sentry/MonitorSchedule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static interval(Ljava/lang/Integer;Lio/sentry/MonitorScheduleUnit;)Lio/sentry/MonitorSchedule;
    .locals 2

    .line 20
    new-instance v0, Lio/sentry/MonitorSchedule;

    sget-object v1, Lio/sentry/MonitorScheduleType;->INTERVAL:Lio/sentry/MonitorScheduleType;

    .line 21
    invoke-virtual {v1}, Lio/sentry/MonitorScheduleType;->apiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lio/sentry/MonitorScheduleUnit;->apiName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p0, p1}, Lio/sentry/MonitorSchedule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/MonitorSchedule;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/MonitorSchedule;->unit:Ljava/lang/String;

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

    iget-object p0, p0, Lio/sentry/MonitorSchedule;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/MonitorSchedule;->value:Ljava/lang/String;

    return-object p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    const-string v0, "type"

    .line 99
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/MonitorSchedule;->type:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 100
    sget-object v0, Lio/sentry/MonitorScheduleType;->INTERVAL:Lio/sentry/MonitorScheduleType;

    invoke-virtual {v0}, Lio/sentry/MonitorScheduleType;->apiName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/MonitorSchedule;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "value"

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/MonitorSchedule;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    iget-object v1, p0, Lio/sentry/MonitorSchedule;->value:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unable to serialize monitor schedule value: %s"

    invoke-interface {p2, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/MonitorSchedule;->value:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :goto_0
    iget-object v0, p0, Lio/sentry/MonitorSchedule;->unit:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "unit"

    .line 110
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/MonitorSchedule;->unit:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_1
    iget-object v0, p0, Lio/sentry/MonitorSchedule;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 113
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/MonitorSchedule;->unknown:Ljava/util/Map;

    .line 114
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 115
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v1

    invoke-interface {v1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_1

    .line 118
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/MonitorSchedule;->type:Ljava/lang/String;

    return-void
.end method

.method public setUnit(Lio/sentry/MonitorScheduleUnit;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1}, Lio/sentry/MonitorScheduleUnit;->apiName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/sentry/MonitorSchedule;->unit:Ljava/lang/String;

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/MonitorSchedule;->unit:Ljava/lang/String;

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

    iput-object p1, p0, Lio/sentry/MonitorSchedule;->unknown:Ljava/util/Map;

    return-void
.end method

.method public setValue(Ljava/lang/Integer;)V
    .locals 0

    .line 58
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/MonitorSchedule;->value:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/MonitorSchedule;->value:Ljava/lang/String;

    return-void
.end method
