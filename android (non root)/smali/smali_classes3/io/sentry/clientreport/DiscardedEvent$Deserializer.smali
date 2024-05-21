.class public final Lio/sentry/clientreport/DiscardedEvent$Deserializer;
.super Ljava/lang/Object;
.source "DiscardedEvent.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/clientreport/DiscardedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/clientreport/DiscardedEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;
    .locals 1

    .line 141
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

    .line 142
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 143
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v0, p0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/clientreport/DiscardedEvent;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    .line 103
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v4

    sget-object v5, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v6, "category"

    const-string v7, "reason"

    const-string v8, "quantity"

    if-ne v4, v5, :cond_4

    .line 104
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v9, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v9, 0x2

    goto :goto_1

    :sswitch_1
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    packed-switch v9, :pswitch_data_0

    if-nez v3, :cond_3

    .line 117
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 119
    :cond_3
    invoke-virtual {p1, p2, v3, v4}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 107
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    if-eqz v0, :cond_7

    if-eqz v1, :cond_6

    if-eqz v2, :cond_5

    .line 135
    new-instance p0, Lio/sentry/clientreport/DiscardedEvent;

    invoke-direct {p0, v0, v1, v2}, Lio/sentry/clientreport/DiscardedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 136
    invoke-virtual {p0, v3}, Lio/sentry/clientreport/DiscardedEvent;->setUnknown(Ljava/util/Map;)V

    return-object p0

    .line 132
    :cond_5
    invoke-direct {p0, v8, p2}, Lio/sentry/clientreport/DiscardedEvent$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    .line 129
    :cond_6
    invoke-direct {p0, v6, p2}, Lio/sentry/clientreport/DiscardedEvent$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    .line 126
    :cond_7
    invoke-direct {p0, v7, p2}, Lio/sentry/clientreport/DiscardedEvent$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4c979b75 -> :sswitch_2
        -0x37ba6dbc -> :sswitch_1
        0x302bcfe -> :sswitch_0
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

    .line 93
    invoke-virtual {p0, p1, p2}, Lio/sentry/clientreport/DiscardedEvent$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/clientreport/DiscardedEvent;

    move-result-object p0

    return-object p0
.end method
