.class public final Lio/sentry/MonitorConfig;
.super Ljava/lang/Object;
.source "MonitorConfig.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/MonitorConfig$JsonKeys;,
        Lio/sentry/MonitorConfig$Deserializer;
    }
.end annotation


# instance fields
.field private checkinMargin:Ljava/lang/Long;

.field private failureIssueThreshold:Ljava/lang/Long;

.field private maxRuntime:Ljava/lang/Long;

.field private recoveryThreshold:Ljava/lang/Long;

.field private schedule:Lio/sentry/MonitorSchedule;

.field private timezone:Ljava/lang/String;

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
.method public constructor <init>(Lio/sentry/MonitorSchedule;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/MonitorConfig;->schedule:Lio/sentry/MonitorSchedule;

    .line 24
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/HubAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Lio/sentry/SentryOptions$Cron;->getDefaultCheckinMargin()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/MonitorConfig;->checkinMargin:Ljava/lang/Long;

    .line 27
    invoke-virtual {p1}, Lio/sentry/SentryOptions$Cron;->getDefaultMaxRuntime()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/MonitorConfig;->maxRuntime:Ljava/lang/Long;

    .line 28
    invoke-virtual {p1}, Lio/sentry/SentryOptions$Cron;->getDefaultTimezone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/MonitorConfig;->timezone:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lio/sentry/SentryOptions$Cron;->getDefaultFailureIssueThreshold()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/MonitorConfig;->failureIssueThreshold:Ljava/lang/Long;

    .line 30
    invoke-virtual {p1}, Lio/sentry/SentryOptions$Cron;->getDefaultRecoveryThreshold()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/MonitorConfig;->recoveryThreshold:Ljava/lang/Long;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCheckinMargin()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/MonitorConfig;->checkinMargin:Ljava/lang/Long;

    return-object p0
.end method

.method public getFailureIssueThreshold()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/MonitorConfig;->failureIssueThreshold:Ljava/lang/Long;

    return-object p0
.end method

.method public getMaxRuntime()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/MonitorConfig;->maxRuntime:Ljava/lang/Long;

    return-object p0
.end method

.method public getRecoveryThreshold()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/MonitorConfig;->recoveryThreshold:Ljava/lang/Long;

    return-object p0
.end method

.method public getSchedule()Lio/sentry/MonitorSchedule;
    .locals 0

    iget-object p0, p0, Lio/sentry/MonitorConfig;->schedule:Lio/sentry/MonitorSchedule;

    return-object p0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/MonitorConfig;->timezone:Ljava/lang/String;

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

    iget-object p0, p0, Lio/sentry/MonitorConfig;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    const-string v0, "schedule"

    .line 111
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/MonitorConfig;->schedule:Lio/sentry/MonitorSchedule;

    .line 112
    invoke-virtual {v0, p1, p2}, Lio/sentry/MonitorSchedule;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    iget-object v0, p0, Lio/sentry/MonitorConfig;->checkinMargin:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const-string v0, "checkin_margin"

    .line 114
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/MonitorConfig;->checkinMargin:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    :cond_0
    iget-object v0, p0, Lio/sentry/MonitorConfig;->maxRuntime:Ljava/lang/Long;

    if-eqz v0, :cond_1

    const-string v0, "max_runtime"

    .line 117
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/MonitorConfig;->maxRuntime:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    :cond_1
    iget-object v0, p0, Lio/sentry/MonitorConfig;->timezone:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "timezone"

    .line 120
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/MonitorConfig;->timezone:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_2
    iget-object v0, p0, Lio/sentry/MonitorConfig;->failureIssueThreshold:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const-string v0, "failure_issue_threshold"

    .line 123
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/MonitorConfig;->failureIssueThreshold:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    :cond_3
    iget-object v0, p0, Lio/sentry/MonitorConfig;->recoveryThreshold:Ljava/lang/Long;

    if-eqz v0, :cond_4

    const-string v0, "recovery_threshold"

    .line 126
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/MonitorConfig;->recoveryThreshold:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    :cond_4
    iget-object v0, p0, Lio/sentry/MonitorConfig;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 129
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

    iget-object v2, p0, Lio/sentry/MonitorConfig;->unknown:Ljava/util/Map;

    .line 130
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 131
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v1

    invoke-interface {v1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 134
    :cond_5
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setCheckinMargin(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/MonitorConfig;->checkinMargin:Ljava/lang/Long;

    return-void
.end method

.method public setFailureIssueThreshold(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/MonitorConfig;->failureIssueThreshold:Ljava/lang/Long;

    return-void
.end method

.method public setMaxRuntime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/MonitorConfig;->maxRuntime:Ljava/lang/Long;

    return-void
.end method

.method public setRecoveryThreshold(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/MonitorConfig;->recoveryThreshold:Ljava/lang/Long;

    return-void
.end method

.method public setSchedule(Lio/sentry/MonitorSchedule;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/MonitorConfig;->schedule:Lio/sentry/MonitorSchedule;

    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/MonitorConfig;->timezone:Ljava/lang/String;

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

    iput-object p1, p0, Lio/sentry/MonitorConfig;->unknown:Ljava/util/Map;

    return-void
.end method
