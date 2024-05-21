.class public final Lio/sentry/protocol/User$Deserializer;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/User;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/User;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 423
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    .line 424
    new-instance p0, Lio/sentry/protocol/User;

    invoke-direct {p0}, Lio/sentry/protocol/User;-><init>()V

    const/4 v0, 0x0

    .line 426
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_c

    .line 427
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 428
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "segment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "ip_address"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_2
    const-string v2, "other"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_3
    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_4
    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_6
    const-string v2, "geo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_7
    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_8
    const-string v2, "username"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    if-nez v0, :cond_a

    .line 465
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 467
    :cond_a
    invoke-virtual {p1, p2, v0, v1}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 439
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/User;->access$302(Lio/sentry/protocol/User;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 442
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/User;->access$402(Lio/sentry/protocol/User;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 457
    :pswitch_2
    invoke-static {p0}, Lio/sentry/protocol/User;->access$700(Lio/sentry/protocol/User;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {p0}, Lio/sentry/protocol/User;->access$700(Lio/sentry/protocol/User;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    :cond_b
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 459
    invoke-static {v1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 458
    invoke-static {p0, v1}, Lio/sentry/protocol/User;->access$702(Lio/sentry/protocol/User;Ljava/util/Map;)Ljava/util/Map;

    goto/16 :goto_0

    .line 430
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/User;->access$002(Lio/sentry/protocol/User;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 445
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/User;->access$502(Lio/sentry/protocol/User;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 453
    :pswitch_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 452
    invoke-static {v1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 451
    invoke-static {p0, v1}, Lio/sentry/protocol/User;->access$702(Lio/sentry/protocol/User;Ljava/util/Map;)Ljava/util/Map;

    goto/16 :goto_0

    .line 448
    :pswitch_6
    new-instance v1, Lio/sentry/protocol/Geo$Deserializer;

    invoke-direct {v1}, Lio/sentry/protocol/Geo$Deserializer;-><init>()V

    invoke-virtual {v1, p1, p2}, Lio/sentry/protocol/Geo$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Geo;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/User;->access$602(Lio/sentry/protocol/User;Lio/sentry/protocol/Geo;)Lio/sentry/protocol/Geo;

    goto/16 :goto_0

    .line 433
    :pswitch_7
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/User;->access$102(Lio/sentry/protocol/User;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 436
    :pswitch_8
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/User;->access$202(Lio/sentry/protocol/User;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 471
    :cond_c
    invoke-virtual {p0, v0}, Lio/sentry/protocol/User;->setUnknown(Ljava/util/Map;)V

    .line 472
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xfd6772a -> :sswitch_8
        0xd1b -> :sswitch_7
        0x18f51 -> :sswitch_6
        0x2eefaa -> :sswitch_5
        0x337a8b -> :sswitch_4
        0x5c24b9c -> :sswitch_3
        0x6527f10 -> :sswitch_2
        0x583738dc -> :sswitch_1
        0x75a49f33 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 418
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/User$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/User;

    move-result-object p0

    return-object p0
.end method
