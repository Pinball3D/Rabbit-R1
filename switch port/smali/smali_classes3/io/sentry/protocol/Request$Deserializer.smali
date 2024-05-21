.class public final Lio/sentry/protocol/Request$Deserializer;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/Request;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 331
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    .line 332
    new-instance p0, Lio/sentry/protocol/Request;

    invoke-direct {p0}, Lio/sentry/protocol/Request;-><init>()V

    const/4 v0, 0x0

    .line 334
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_d

    .line 335
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "api_target"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "query_string"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "body_size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "cookies"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_4
    const-string v2, "headers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_5
    const-string v2, "other"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_6
    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_7
    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_8
    const-string v2, "env"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_9
    const-string v2, "method"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_a
    const-string v2, "fragment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_1

    :cond_b
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    if-nez v0, :cond_c

    .line 382
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 384
    :cond_c
    invoke-virtual {p1, p2, v0, v1}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 378
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Request;->access$1002(Lio/sentry/protocol/Request;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 344
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Request;->access$202(Lio/sentry/protocol/Request;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 375
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Request;->access$902(Lio/sentry/protocol/Request;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 350
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Request;->access$402(Lio/sentry/protocol/Request;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 354
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 356
    invoke-static {v1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Request;->access$502(Lio/sentry/protocol/Request;Ljava/util/Map;)Ljava/util/Map;

    goto/16 :goto_0

    .line 366
    :pswitch_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 368
    invoke-static {v1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Request;->access$702(Lio/sentry/protocol/Request;Ljava/util/Map;)Ljava/util/Map;

    goto/16 :goto_0

    .line 347
    :pswitch_6
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Request;->access$302(Lio/sentry/protocol/Request;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 338
    :pswitch_7
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Request;->access$002(Lio/sentry/protocol/Request;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 360
    :pswitch_8
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 362
    invoke-static {v1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Request;->access$602(Lio/sentry/protocol/Request;Ljava/util/Map;)Ljava/util/Map;

    goto/16 :goto_0

    .line 341
    :pswitch_9
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Request;->access$102(Lio/sentry/protocol/Request;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 372
    :pswitch_a
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Request;->access$802(Lio/sentry/protocol/Request;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 388
    :cond_d
    invoke-virtual {p0, v0}, Lio/sentry/protocol/Request;->setUnknown(Ljava/util/Map;)V

    .line 389
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x625d1db0 -> :sswitch_a
        -0x403a2f1f -> :sswitch_9
        0x188ed -> :sswitch_8
        0x1c56f -> :sswitch_7
        0x2eefaa -> :sswitch_6
        0x6527f10 -> :sswitch_5
        0x2f676f86 -> :sswitch_4
        0x38c1428f -> :sswitch_3
        0x4aaf147e -> :sswitch_2
        0x5f165368 -> :sswitch_1
        0x760e4356 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
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

    .line 326
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/Request$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Request;

    move-result-object p0

    return-object p0
.end method
