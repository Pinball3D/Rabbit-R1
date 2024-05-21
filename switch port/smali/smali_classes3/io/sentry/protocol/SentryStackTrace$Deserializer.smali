.class public final Lio/sentry/protocol/SentryStackTrace$Deserializer;
.super Ljava/lang/Object;
.source "SentryStackTrace.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentryStackTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/SentryStackTrace;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryStackTrace;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    new-instance p0, Lio/sentry/protocol/SentryStackTrace;

    invoke-direct {p0}, Lio/sentry/protocol/SentryStackTrace;-><init>()V

    .line 160
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 v0, 0x0

    .line 161
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_4

    .line 162
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "snapshot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "registers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "frames"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    if-nez v0, :cond_3

    .line 178
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 180
    :cond_3
    invoke-virtual {p1, p2, v0, v1}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackTrace;->access$202(Lio/sentry/protocol/SentryStackTrace;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    .line 171
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 170
    invoke-static {v1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 169
    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackTrace;->access$102(Lio/sentry/protocol/SentryStackTrace;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_0

    .line 165
    :pswitch_2
    new-instance v1, Lio/sentry/protocol/SentryStackFrame$Deserializer;

    invoke-direct {v1}, Lio/sentry/protocol/SentryStackFrame$Deserializer;-><init>()V

    .line 166
    invoke-virtual {p1, p2, v1}, Lio/sentry/JsonObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v1

    .line 165
    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackTrace;->access$002(Lio/sentry/protocol/SentryStackTrace;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 184
    :cond_4
    invoke-virtual {p0, v0}, Lio/sentry/protocol/SentryStackTrace;->setUnknown(Ljava/util/Map;)V

    .line 185
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b7d7b5a -> :sswitch_2
        0x4a9a630 -> :sswitch_1
        0x10fad5c4 -> :sswitch_0
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

    .line 153
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/SentryStackTrace$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryStackTrace;

    move-result-object p0

    return-object p0
.end method
