.class public final Lio/sentry/SentryBaseEvent$Deserializer;
.super Ljava/lang/Object;
.source "SentryBaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryBaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeValue(Lio/sentry/SentryBaseEvent;Ljava/lang/String;Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 401
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "platform"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_1
    const-string p0, "request"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_2
    const-string p0, "release"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string p0, "event_id"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_4
    const-string p0, "extra"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_5
    const-string p0, "user"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_6
    const-string p0, "tags"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_7
    const-string p0, "dist"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_8
    const-string p0, "sdk"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_9
    const-string p0, "breadcrumbs"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_a
    const-string p0, "environment"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_b
    const-string p0, "contexts"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_c
    const-string p0, "server_name"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    move v2, v1

    goto :goto_0

    :sswitch_d
    const-string p0, "debug_meta"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v0

    .line 426
    :pswitch_0
    invoke-virtual {p3}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lio/sentry/SentryBaseEvent;->access$702(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Ljava/lang/String;

    return v1

    .line 413
    :pswitch_1
    new-instance p0, Lio/sentry/protocol/Request$Deserializer;

    invoke-direct {p0}, Lio/sentry/protocol/Request$Deserializer;-><init>()V

    invoke-virtual {p3, p4, p0}, Lio/sentry/JsonObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/Request;

    invoke-static {p1, p0}, Lio/sentry/SentryBaseEvent;->access$302(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/Request;)Lio/sentry/protocol/Request;

    return v1

    .line 420
    :pswitch_2
    invoke-virtual {p3}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lio/sentry/SentryBaseEvent;->access$502(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Ljava/lang/String;

    return v1

    .line 403
    :pswitch_3
    new-instance p0, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {p0}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-virtual {p3, p4, p0}, Lio/sentry/JsonObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/SentryId;

    invoke-static {p1, p0}, Lio/sentry/SentryBaseEvent;->access$002(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/SentryId;)Lio/sentry/protocol/SentryId;

    return v1

    .line 444
    :pswitch_4
    invoke-virtual {p3}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 445
    invoke-static {p0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1, p0}, Lio/sentry/SentryBaseEvent;->access$1302(Lio/sentry/SentryBaseEvent;Ljava/util/Map;)Ljava/util/Map;

    return v1

    .line 429
    :pswitch_5
    new-instance p0, Lio/sentry/protocol/User$Deserializer;

    invoke-direct {p0}, Lio/sentry/protocol/User$Deserializer;-><init>()V

    invoke-virtual {p3, p4, p0}, Lio/sentry/JsonObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/User;

    invoke-static {p1, p0}, Lio/sentry/SentryBaseEvent;->access$802(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/User;)Lio/sentry/protocol/User;

    return v1

    .line 416
    :pswitch_6
    invoke-virtual {p3}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 417
    invoke-static {p0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1, p0}, Lio/sentry/SentryBaseEvent;->access$402(Lio/sentry/SentryBaseEvent;Ljava/util/Map;)Ljava/util/Map;

    return v1

    .line 435
    :pswitch_7
    invoke-virtual {p3}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lio/sentry/SentryBaseEvent;->access$1002(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Ljava/lang/String;

    return v1

    .line 410
    :pswitch_8
    new-instance p0, Lio/sentry/protocol/SdkVersion$Deserializer;

    invoke-direct {p0}, Lio/sentry/protocol/SdkVersion$Deserializer;-><init>()V

    invoke-virtual {p3, p4, p0}, Lio/sentry/JsonObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/SdkVersion;

    invoke-static {p1, p0}, Lio/sentry/SentryBaseEvent;->access$202(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/SdkVersion;)Lio/sentry/protocol/SdkVersion;

    return v1

    .line 438
    :pswitch_9
    new-instance p0, Lio/sentry/Breadcrumb$Deserializer;

    invoke-direct {p0}, Lio/sentry/Breadcrumb$Deserializer;-><init>()V

    invoke-virtual {p3, p4, p0}, Lio/sentry/JsonObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lio/sentry/SentryBaseEvent;->access$1102(Lio/sentry/SentryBaseEvent;Ljava/util/List;)Ljava/util/List;

    return v1

    .line 423
    :pswitch_a
    invoke-virtual {p3}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lio/sentry/SentryBaseEvent;->access$602(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Ljava/lang/String;

    return v1

    .line 406
    :pswitch_b
    new-instance p0, Lio/sentry/protocol/Contexts$Deserializer;

    invoke-direct {p0}, Lio/sentry/protocol/Contexts$Deserializer;-><init>()V

    invoke-virtual {p0, p3, p4}, Lio/sentry/protocol/Contexts$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Contexts;

    move-result-object p0

    .line 407
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$100(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/Contexts;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/sentry/protocol/Contexts;->putAll(Ljava/util/Map;)V

    return v1

    .line 432
    :pswitch_c
    invoke-virtual {p3}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lio/sentry/SentryBaseEvent;->access$902(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Ljava/lang/String;

    return v1

    .line 441
    :pswitch_d
    new-instance p0, Lio/sentry/protocol/DebugMeta$Deserializer;

    invoke-direct {p0}, Lio/sentry/protocol/DebugMeta$Deserializer;-><init>()V

    invoke-virtual {p3, p4, p0}, Lio/sentry/JsonObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/DebugMeta;

    invoke-static {p1, p0}, Lio/sentry/SentryBaseEvent;->access$1202(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/DebugMeta;)Lio/sentry/protocol/DebugMeta;

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6db2cb8f -> :sswitch_d
        -0x2d39e9f9 -> :sswitch_c
        -0x21d07f5c -> :sswitch_b
        -0x51ecded -> :sswitch_a
        -0x3112f30 -> :sswitch_9
        0x1bc3a -> :sswitch_8
        0x2f0da6 -> :sswitch_7
        0x363419 -> :sswitch_6
        0x36ebcb -> :sswitch_5
        0x5c79410 -> :sswitch_4
        0x1093c0e0 -> :sswitch_3
        0x41012807 -> :sswitch_2
        0x414ef28f -> :sswitch_1
        0x6fbd6873 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
