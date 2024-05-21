.class public final Lio/sentry/protocol/App$Deserializer;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/App;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/App;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 260
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    .line 261
    new-instance p0, Lio/sentry/protocol/App;

    invoke-direct {p0}, Lio/sentry/protocol/App;-><init>()V

    const/4 v0, 0x0

    .line 263
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_c

    .line 264
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "app_build"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "app_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "permissions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_3
    const-string v2, "app_start_time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_4
    const-string v2, "app_identifier"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_5
    const-string v2, "build_type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_6
    const-string v2, "in_foreground"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_7
    const-string v2, "app_version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_8
    const-string v2, "view_names"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_9
    const-string v2, "device_app_hash"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    if-nez v0, :cond_b

    .line 303
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 305
    :cond_b
    invoke-virtual {p1, p2, v0, v1}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/App;->access$602(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 279
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/App;->access$402(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 290
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 289
    invoke-static {v1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 288
    invoke-static {p0, v1}, Lio/sentry/protocol/App;->access$702(Lio/sentry/protocol/App;Ljava/util/Map;)Ljava/util/Map;

    goto/16 :goto_0

    .line 270
    :pswitch_3
    invoke-virtual {p1, p2}, Lio/sentry/JsonObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/App;->access$102(Lio/sentry/protocol/App;Ljava/util/Date;)Ljava/util/Date;

    goto/16 :goto_0

    .line 267
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/App;->access$002(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 276
    :pswitch_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/App;->access$302(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 293
    :pswitch_6
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/App;->access$802(Lio/sentry/protocol/App;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 282
    :pswitch_7
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/App;->access$502(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 296
    :pswitch_8
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {p0, v1}, Lio/sentry/protocol/App;->setViewNames(Ljava/util/List;)V

    goto/16 :goto_0

    .line 273
    :pswitch_9
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/App;->access$202(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 309
    :cond_c
    invoke-virtual {p0, v0}, Lio/sentry/protocol/App;->setUnknown(Ljava/util/Map;)V

    .line 310
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7121ffcb -> :sswitch_9
        -0x5adfdad2 -> :sswitch_8
        -0x35c17346 -> :sswitch_7
        -0x26c68763 -> :sswitch_6
        -0x1c09a995 -> :sswitch_5
        0x2c7b9987 -> :sswitch_4
        0x2f2ea168 -> :sswitch_3
        0x4392f484 -> :sswitch_2
        0x4598e5e9 -> :sswitch_1
        0x6ce3c6d0 -> :sswitch_0
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

    .line 255
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/App$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/App;

    move-result-object p0

    return-object p0
.end method
