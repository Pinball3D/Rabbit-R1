.class public final Lio/sentry/CheckIn;
.super Ljava/lang/Object;
.source "CheckIn.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/CheckIn$JsonKeys;,
        Lio/sentry/CheckIn$Deserializer;
    }
.end annotation


# instance fields
.field private final checkInId:Lio/sentry/protocol/SentryId;

.field private final contexts:Lio/sentry/MonitorContexts;

.field private duration:Ljava/lang/Double;

.field private environment:Ljava/lang/String;

.field private monitorConfig:Lio/sentry/MonitorConfig;

.field private monitorSlug:Ljava/lang/String;

.field private release:Ljava/lang/String;

.field private status:Ljava/lang/String;

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
.method public constructor <init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Lio/sentry/CheckInStatus;)V
    .locals 0

    .line 36
    invoke-virtual {p3}, Lio/sentry/CheckInStatus;->apiName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/CheckIn;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lio/sentry/MonitorContexts;

    invoke-direct {v0}, Lio/sentry/MonitorContexts;-><init>()V

    iput-object v0, p0, Lio/sentry/CheckIn;->contexts:Lio/sentry/MonitorContexts;

    if-nez p1, :cond_0

    .line 44
    new-instance p1, Lio/sentry/protocol/SentryId;

    invoke-direct {p1}, Lio/sentry/protocol/SentryId;-><init>()V

    :cond_0
    iput-object p1, p0, Lio/sentry/CheckIn;->checkInId:Lio/sentry/protocol/SentryId;

    iput-object p2, p0, Lio/sentry/CheckIn;->monitorSlug:Ljava/lang/String;

    iput-object p3, p0, Lio/sentry/CheckIn;->status:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/sentry/CheckInStatus;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p2}, Lio/sentry/CheckInStatus;->apiName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lio/sentry/CheckIn;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCheckInId()Lio/sentry/protocol/SentryId;
    .locals 0

    iget-object p0, p0, Lio/sentry/CheckIn;->checkInId:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public getContexts()Lio/sentry/MonitorContexts;
    .locals 0

    iget-object p0, p0, Lio/sentry/CheckIn;->contexts:Lio/sentry/MonitorContexts;

    return-object p0
.end method

.method public getDuration()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lio/sentry/CheckIn;->duration:Ljava/lang/Double;

    return-object p0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/CheckIn;->environment:Ljava/lang/String;

    return-object p0
.end method

.method public getMonitorConfig()Lio/sentry/MonitorConfig;
    .locals 0

    iget-object p0, p0, Lio/sentry/CheckIn;->monitorConfig:Lio/sentry/MonitorConfig;

    return-object p0
.end method

.method public getMonitorSlug()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/CheckIn;->monitorSlug:Ljava/lang/String;

    return-object p0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/CheckIn;->release:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/CheckIn;->status:Ljava/lang/String;

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

    iget-object p0, p0, Lio/sentry/CheckIn;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    const-string v0, "check_in_id"

    .line 139
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/CheckIn;->checkInId:Lio/sentry/protocol/SentryId;

    .line 140
    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/SentryId;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    const-string v0, "monitor_slug"

    .line 141
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/CheckIn;->monitorSlug:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    const-string v0, "status"

    .line 142
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/CheckIn;->status:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/CheckIn;->duration:Ljava/lang/Double;

    if-eqz v0, :cond_0

    const-string v0, "duration"

    .line 144
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/CheckIn;->duration:Ljava/lang/Double;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    :cond_0
    iget-object v0, p0, Lio/sentry/CheckIn;->release:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "release"

    .line 147
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/CheckIn;->release:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_1
    iget-object v0, p0, Lio/sentry/CheckIn;->environment:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "environment"

    .line 150
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/CheckIn;->environment:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_2
    iget-object v0, p0, Lio/sentry/CheckIn;->monitorConfig:Lio/sentry/MonitorConfig;

    if-eqz v0, :cond_3

    const-string v0, "monitor_config"

    .line 153
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/CheckIn;->monitorConfig:Lio/sentry/MonitorConfig;

    .line 154
    invoke-virtual {v0, p1, p2}, Lio/sentry/MonitorConfig;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    :cond_3
    iget-object v0, p0, Lio/sentry/CheckIn;->contexts:Lio/sentry/MonitorContexts;

    if-eqz v0, :cond_4

    const-string v0, "contexts"

    .line 157
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/CheckIn;->contexts:Lio/sentry/MonitorContexts;

    .line 158
    invoke-virtual {v0, p1, p2}, Lio/sentry/MonitorContexts;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    :cond_4
    iget-object v0, p0, Lio/sentry/CheckIn;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 161
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/CheckIn;->unknown:Ljava/util/Map;

    .line 162
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 163
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v1

    invoke-interface {v1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 166
    :cond_5
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setDuration(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/CheckIn;->duration:Ljava/lang/Double;

    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/CheckIn;->environment:Ljava/lang/String;

    return-void
.end method

.method public setMonitorConfig(Lio/sentry/MonitorConfig;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/CheckIn;->monitorConfig:Lio/sentry/MonitorConfig;

    return-void
.end method

.method public setMonitorSlug(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/CheckIn;->monitorSlug:Ljava/lang/String;

    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/CheckIn;->release:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Lio/sentry/CheckInStatus;)V
    .locals 0

    .line 83
    invoke-virtual {p1}, Lio/sentry/CheckInStatus;->apiName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/CheckIn;->status:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/CheckIn;->status:Ljava/lang/String;

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

    iput-object p1, p0, Lio/sentry/CheckIn;->unknown:Ljava/util/Map;

    return-void
.end method
