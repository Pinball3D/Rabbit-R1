.class public final Lio/sentry/MonitorSchedule$Deserializer;
.super Ljava/lang/Object;
.source "MonitorSchedule.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/MonitorSchedule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/MonitorSchedule;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/MonitorSchedule;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 p0, 0x0

    move-object v0, p0

    move-object v1, v0

    move-object v2, v1

    .line 133
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v3, v4, :cond_4

    .line 134
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "value"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "unit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    if-nez v2, :cond_3

    .line 147
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 149
    :cond_3
    invoke-virtual {p1, p2, v2, v3}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 137
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 153
    :cond_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    if-eqz p0, :cond_6

    if-eqz v0, :cond_5

    .line 169
    new-instance p1, Lio/sentry/MonitorSchedule;

    invoke-direct {p1, p0, v0, v1}, Lio/sentry/MonitorSchedule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1, v2}, Lio/sentry/MonitorSchedule;->setUnknown(Ljava/util/Map;)V

    return-object p1

    .line 164
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing required field \"value\""

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    throw p0

    .line 157
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing required field \"type\""

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 158
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    throw p0

    :sswitch_data_0
    .sparse-switch
        0x368f3a -> :sswitch_2
        0x36d984 -> :sswitch_1
        0x6ac9171 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1, p2}, Lio/sentry/MonitorSchedule$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/MonitorSchedule;

    move-result-object p0

    return-object p0
.end method
