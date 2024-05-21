.class public final Lio/sentry/clientreport/ClientReport$Deserializer;
.super Ljava/lang/Object;
.source "ClientReport.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/clientreport/ClientReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/clientreport/ClientReport;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;
    .locals 1

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Missing required field \""

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 119
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 120
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v0, p0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/clientreport/ClientReport;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 84
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v5, "timestamp"

    const-string v6, "discarded_events"

    if-ne v3, v4, :cond_3

    .line 85
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v2, :cond_0

    .line 97
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 99
    :cond_0
    invoke-virtual {p1, p2, v2, v3}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1, p2}, Lio/sentry/JsonObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0

    .line 91
    :cond_2
    new-instance v3, Lio/sentry/clientreport/DiscardedEvent$Deserializer;

    invoke-direct {v3}, Lio/sentry/clientreport/DiscardedEvent$Deserializer;-><init>()V

    .line 92
    invoke-virtual {p1, p2, v3}, Lio/sentry/JsonObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v3

    .line 93
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    if-eqz v1, :cond_5

    .line 108
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 112
    new-instance p0, Lio/sentry/clientreport/ClientReport;

    invoke-direct {p0, v1, v0}, Lio/sentry/clientreport/ClientReport;-><init>(Ljava/util/Date;Ljava/util/List;)V

    .line 113
    invoke-virtual {p0, v2}, Lio/sentry/clientreport/ClientReport;->setUnknown(Ljava/util/Map;)V

    return-object p0

    .line 109
    :cond_4
    invoke-direct {p0, v6, p2}, Lio/sentry/clientreport/ClientReport$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    .line 106
    :cond_5
    invoke-direct {p0, v5, p2}, Lio/sentry/clientreport/ClientReport$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1, p2}, Lio/sentry/clientreport/ClientReport$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/clientreport/ClientReport;

    move-result-object p0

    return-object p0
.end method
