.class public final Lio/sentry/clientreport/ClientReport;
.super Ljava/lang/Object;
.source "ClientReport.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/clientreport/ClientReport$JsonKeys;,
        Lio/sentry/clientreport/ClientReport$Deserializer;
    }
.end annotation


# instance fields
.field private final discardedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/clientreport/DiscardedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final timestamp:Ljava/util/Date;

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
.method public constructor <init>(Ljava/util/Date;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Lio/sentry/clientreport/DiscardedEvent;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/clientreport/ClientReport;->timestamp:Ljava/util/Date;

    iput-object p2, p0, Lio/sentry/clientreport/ClientReport;->discardedEvents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDiscardedEvents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/clientreport/DiscardedEvent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/clientreport/ClientReport;->discardedEvents:Ljava/util/List;

    return-object p0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lio/sentry/clientreport/ClientReport;->timestamp:Ljava/util/Date;

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

    iget-object p0, p0, Lio/sentry/clientreport/ClientReport;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    const-string v0, "timestamp"

    .line 62
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/clientreport/ClientReport;->timestamp:Ljava/util/Date;

    invoke-static {v1}, Lio/sentry/DateUtils;->getTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    const-string v0, "discarded_events"

    .line 63
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/clientreport/ClientReport;->discardedEvents:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/clientreport/ClientReport;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 66
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

    iget-object v2, p0, Lio/sentry/clientreport/ClientReport;->unknown:Ljava/util/Map;

    .line 67
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 68
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v1

    invoke-interface {v1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 72
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

    iput-object p1, p0, Lio/sentry/clientreport/ClientReport;->unknown:Ljava/util/Map;

    return-void
.end method
