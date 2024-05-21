.class public final Lio/sentry/UserFeedback$Deserializer;
.super Ljava/lang/Object;
.source "UserFeedback.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/UserFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/UserFeedback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/UserFeedback;
    .locals 7
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

    .line 186
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v4

    sget-object v5, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v4, v5, :cond_5

    .line 187
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 188
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "event_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_1
    const-string v5, "email"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_2
    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_3
    const-string v5, "comments"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    packed-switch v6, :pswitch_data_0

    if-nez v3, :cond_4

    .line 203
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 205
    :cond_4
    invoke-virtual {p1, p2, v3, v4}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :pswitch_0
    new-instance p0, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {p0}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/SentryId$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    goto :goto_0

    .line 196
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 193
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 199
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 209
    :cond_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    if-eqz p0, :cond_6

    .line 218
    new-instance p1, Lio/sentry/UserFeedback;

    invoke-direct {p1, p0, v0, v1, v2}, Lio/sentry/UserFeedback;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1, v3}, Lio/sentry/UserFeedback;->setUnknown(Ljava/util/Map;)V

    return-object p1

    .line 213
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing required field \"event_id\""

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 214
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x23e8220c -> :sswitch_3
        0x337a8b -> :sswitch_2
        0x5c24b9c -> :sswitch_1
        0x1093c0e0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 175
    invoke-virtual {p0, p1, p2}, Lio/sentry/UserFeedback$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/UserFeedback;

    move-result-object p0

    return-object p0
.end method
