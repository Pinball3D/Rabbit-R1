.class public final Lio/sentry/profilemeasurements/ProfileMeasurementValue$Deserializer;
.super Ljava/lang/Object;
.source "ProfileMeasurementValue.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/profilemeasurements/ProfileMeasurementValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/profilemeasurements/ProfileMeasurementValue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/profilemeasurements/ProfileMeasurementValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    .line 97
    new-instance p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    invoke-direct {p0}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>()V

    const/4 v0, 0x0

    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_4

    .line 101
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "elapsed_since_start_ns"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 119
    :cond_1
    invoke-virtual {p1, p2, v0, v1}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->access$002(Lio/sentry/profilemeasurements/ProfileMeasurementValue;D)D

    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    invoke-static {p0, v1}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->access$102(Lio/sentry/profilemeasurements/ProfileMeasurementValue;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {p0, v0}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;->setUnknown(Ljava/util/Map;)V

    .line 124
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object p0
.end method

.method public bridge synthetic deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1, p2}, Lio/sentry/profilemeasurements/ProfileMeasurementValue$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    move-result-object p0

    return-object p0
.end method
