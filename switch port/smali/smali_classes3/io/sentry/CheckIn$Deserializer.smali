.class public final Lio/sentry/CheckIn$Deserializer;
.super Ljava/lang/Object;
.source "CheckIn.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/CheckIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/CheckIn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/CheckIn;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 p0, 0x0

    move-object v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    .line 186
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v8

    sget-object v9, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v8, v9, :cond_9

    .line 187
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v8

    .line 188
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, -0x1

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v9, "monitor_slug"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    const/4 v10, 0x7

    goto :goto_1

    :sswitch_1
    const-string v9, "check_in_id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x6

    goto :goto_1

    :sswitch_2
    const-string v9, "release"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v10, 0x5

    goto :goto_1

    :sswitch_3
    const-string v9, "environment"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    const/4 v10, 0x4

    goto :goto_1

    :sswitch_4
    const-string v9, "contexts"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    const/4 v10, 0x3

    goto :goto_1

    :sswitch_5
    const-string v9, "status"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    const/4 v10, 0x2

    goto :goto_1

    :sswitch_6
    const-string v9, "duration"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_1

    :cond_6
    const/4 v10, 0x1

    goto :goto_1

    :sswitch_7
    const-string v9, "monitor_config"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_1

    :cond_7
    const/4 v10, 0x0

    :goto_1
    packed-switch v10, :pswitch_data_0

    if-nez v2, :cond_8

    .line 215
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 217
    :cond_8
    invoke-virtual {p1, p2, v2, v8}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 190
    :pswitch_1
    new-instance p0, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {p0}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/SentryId$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    goto/16 :goto_0

    .line 202
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 205
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 211
    :pswitch_4
    new-instance v7, Lio/sentry/MonitorContexts$Deserializer;

    invoke-direct {v7}, Lio/sentry/MonitorContexts$Deserializer;-><init>()V

    invoke-virtual {v7, p1, p2}, Lio/sentry/MonitorContexts$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/MonitorContexts;

    move-result-object v7

    goto/16 :goto_0

    .line 196
    :pswitch_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 199
    :pswitch_6
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v3

    goto/16 :goto_0

    .line 208
    :pswitch_7
    new-instance v6, Lio/sentry/MonitorConfig$Deserializer;

    invoke-direct {v6}, Lio/sentry/MonitorConfig$Deserializer;-><init>()V

    invoke-virtual {v6, p1, p2}, Lio/sentry/MonitorConfig$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/MonitorConfig;

    move-result-object v6

    goto/16 :goto_0

    .line 221
    :cond_9
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    if-eqz p0, :cond_c

    if-eqz v0, :cond_b

    if-eqz v1, :cond_a

    .line 244
    new-instance p1, Lio/sentry/CheckIn;

    invoke-direct {p1, p0, v0, v1}, Lio/sentry/CheckIn;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1, v3}, Lio/sentry/CheckIn;->setDuration(Ljava/lang/Double;)V

    .line 246
    invoke-virtual {p1, v4}, Lio/sentry/CheckIn;->setRelease(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1, v5}, Lio/sentry/CheckIn;->setEnvironment(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1, v6}, Lio/sentry/CheckIn;->setMonitorConfig(Lio/sentry/MonitorConfig;)V

    .line 249
    invoke-virtual {p1}, Lio/sentry/CheckIn;->getContexts()Lio/sentry/MonitorContexts;

    move-result-object p0

    invoke-virtual {p0, v7}, Lio/sentry/MonitorContexts;->putAll(Ljava/util/Map;)V

    .line 250
    invoke-virtual {p1, v2}, Lio/sentry/CheckIn;->setUnknown(Ljava/util/Map;)V

    return-object p1

    .line 239
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing required field \"status\""

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 240
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    throw p0

    .line 232
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing required field \"monitor_slug\""

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 233
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    throw p0

    .line 225
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing required field \"check_in_id\""

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 226
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bb61639 -> :sswitch_7
        -0x76bbb26c -> :sswitch_6
        -0x3532300e -> :sswitch_5
        -0x21d07f5c -> :sswitch_4
        -0x51ecded -> :sswitch_3
        0x41012807 -> :sswitch_2
        0x41ad787e -> :sswitch_1
        0x67422e70 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
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

    .line 171
    invoke-virtual {p0, p1, p2}, Lio/sentry/CheckIn$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/CheckIn;

    move-result-object p0

    return-object p0
.end method
