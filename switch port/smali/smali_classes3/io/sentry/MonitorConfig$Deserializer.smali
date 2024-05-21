.class public final Lio/sentry/MonitorConfig$Deserializer;
.super Ljava/lang/Object;
.source "MonitorConfig.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/MonitorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/MonitorConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/MonitorConfig;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 p0, 0x0

    move-object v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    .line 152
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v6

    sget-object v7, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v6, v7, :cond_7

    .line 153
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v6

    .line 154
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, -0x1

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "failure_issue_threshold"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x5

    goto :goto_1

    :sswitch_1
    const-string v7, "max_runtime"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x4

    goto :goto_1

    :sswitch_2
    const-string v7, "recovery_threshold"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x3

    goto :goto_1

    :sswitch_3
    const-string v7, "schedule"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x2

    goto :goto_1

    :sswitch_4
    const-string v7, "checkin_margin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    :sswitch_5
    const-string v7, "timezone"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_1
    packed-switch v8, :pswitch_data_0

    if-nez v5, :cond_6

    .line 175
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 177
    :cond_6
    invoke-virtual {p1, p2, v5, v6}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 162
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 171
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v4

    goto :goto_0

    .line 156
    :pswitch_3
    new-instance p0, Lio/sentry/MonitorSchedule$Deserializer;

    invoke-direct {p0}, Lio/sentry/MonitorSchedule$Deserializer;-><init>()V

    invoke-virtual {p0, p1, p2}, Lio/sentry/MonitorSchedule$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/MonitorSchedule;

    move-result-object p0

    goto :goto_0

    .line 159
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 165
    :pswitch_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 181
    :cond_7
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    if-eqz p0, :cond_8

    .line 190
    new-instance p1, Lio/sentry/MonitorConfig;

    invoke-direct {p1, p0}, Lio/sentry/MonitorConfig;-><init>(Lio/sentry/MonitorSchedule;)V

    .line 191
    invoke-virtual {p1, v0}, Lio/sentry/MonitorConfig;->setCheckinMargin(Ljava/lang/Long;)V

    .line 192
    invoke-virtual {p1, v1}, Lio/sentry/MonitorConfig;->setMaxRuntime(Ljava/lang/Long;)V

    .line 193
    invoke-virtual {p1, v2}, Lio/sentry/MonitorConfig;->setTimezone(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1, v3}, Lio/sentry/MonitorConfig;->setFailureIssueThreshold(Ljava/lang/Long;)V

    .line 195
    invoke-virtual {p1, v4}, Lio/sentry/MonitorConfig;->setRecoveryThreshold(Ljava/lang/Long;)V

    .line 196
    invoke-virtual {p1, v5}, Lio/sentry/MonitorConfig;->setUnknown(Ljava/util/Map;)V

    return-object p1

    .line 185
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing required field \"schedule\""

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 186
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x7bc0b807 -> :sswitch_5
        -0x35f76a00 -> :sswitch_4
        -0x29996d69 -> :sswitch_3
        -0x243557bf -> :sswitch_2
        0x5e4977fd -> :sswitch_1
        0x7f773fd0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 139
    invoke-virtual {p0, p1, p2}, Lio/sentry/MonitorConfig$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/MonitorConfig;

    move-result-object p0

    return-object p0
.end method
