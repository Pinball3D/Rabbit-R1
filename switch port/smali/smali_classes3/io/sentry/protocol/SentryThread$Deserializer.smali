.class public final Lio/sentry/protocol/SentryThread$Deserializer;
.super Ljava/lang/Object;
.source "SentryThread.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentryThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/SentryThread;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryThread;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 308
    new-instance p0, Lio/sentry/protocol/SentryThread;

    invoke-direct {p0}, Lio/sentry/protocol/SentryThread;-><init>()V

    .line 310
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 v0, 0x0

    .line 311
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_c

    .line 312
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "stacktrace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "current"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "crashed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_3
    const-string v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_4
    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_5
    const-string v2, "main"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_6
    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_7
    const-string v2, "held_locks"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_8
    const-string v2, "priority"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_9
    const-string v2, "daemon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    if-nez v0, :cond_b

    .line 351
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 353
    :cond_b
    invoke-virtual {p1, p2, v0, v1}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 339
    :pswitch_0
    new-instance v1, Lio/sentry/protocol/SentryStackTrace$Deserializer;

    invoke-direct {v1}, Lio/sentry/protocol/SentryStackTrace$Deserializer;-><init>()V

    .line 340
    invoke-virtual {p1, p2, v1}, Lio/sentry/JsonObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/protocol/SentryStackTrace;

    .line 339
    invoke-static {p0, v1}, Lio/sentry/protocol/SentryThread;->access$802(Lio/sentry/protocol/SentryThread;Lio/sentry/protocol/SentryStackTrace;)Lio/sentry/protocol/SentryStackTrace;

    goto/16 :goto_0

    .line 330
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryThread;->access$502(Lio/sentry/protocol/SentryThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 327
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryThread;->access$402(Lio/sentry/protocol/SentryThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 324
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryThread;->access$302(Lio/sentry/protocol/SentryThread;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 321
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryThread;->access$202(Lio/sentry/protocol/SentryThread;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 336
    :pswitch_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryThread;->access$702(Lio/sentry/protocol/SentryThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 315
    :pswitch_6
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryThread;->access$002(Lio/sentry/protocol/SentryThread;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 343
    :pswitch_7
    new-instance v1, Lio/sentry/SentryLockReason$Deserializer;

    invoke-direct {v1}, Lio/sentry/SentryLockReason$Deserializer;-><init>()V

    .line 344
    invoke-virtual {p1, p2, v1}, Lio/sentry/JsonObjectReader;->nextMapOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 346
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p0, v2}, Lio/sentry/protocol/SentryThread;->access$902(Lio/sentry/protocol/SentryThread;Ljava/util/Map;)Ljava/util/Map;

    goto/16 :goto_0

    .line 318
    :pswitch_8
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryThread;->access$102(Lio/sentry/protocol/SentryThread;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto/16 :goto_0

    .line 333
    :pswitch_9
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryThread;->access$602(Lio/sentry/protocol/SentryThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 357
    :cond_c
    invoke-virtual {p0, v0}, Lio/sentry/protocol/SentryThread;->setUnknown(Ljava/util/Map;)V

    .line 358
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4fd4e97c -> :sswitch_9
        -0x4577865c -> :sswitch_8
        -0x1df9e8e2 -> :sswitch_7
        0xd1b -> :sswitch_6
        0x3305b9 -> :sswitch_5
        0x337a8b -> :sswitch_4
        0x68ac491 -> :sswitch_3
        0x3d1e2286 -> :sswitch_2
        0x432bbd79 -> :sswitch_1
        0x7a8983bd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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

    .line 303
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/SentryThread$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryThread;

    move-result-object p0

    return-object p0
.end method
