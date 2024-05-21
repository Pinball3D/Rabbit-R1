.class public final Lio/sentry/protocol/SdkVersion$Deserializer;
.super Ljava/lang/Object;
.source "SdkVersion.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SdkVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/SdkVersion;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SdkVersion;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    .line 237
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v4

    sget-object v5, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v4, v5, :cond_6

    .line 238
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 239
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "integrations"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_1
    const-string v5, "packages"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_2
    const-string v5, "version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_3
    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    packed-switch v6, :pswitch_data_0

    if-nez v3, :cond_5

    .line 261
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 263
    :cond_5
    invoke-virtual {p1, p2, v3, v4}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_0

    .line 256
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 247
    :pswitch_1
    new-instance v4, Lio/sentry/protocol/SentryPackage$Deserializer;

    invoke-direct {v4}, Lio/sentry/protocol/SentryPackage$Deserializer;-><init>()V

    .line 248
    invoke-virtual {p1, p2, v4}, Lio/sentry/JsonObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 250
    invoke-interface {p0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 244
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 241
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 267
    :cond_6
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    if-eqz v1, :cond_8

    if-eqz v2, :cond_7

    .line 282
    new-instance p1, Lio/sentry/protocol/SdkVersion;

    invoke-direct {p1, v1, v2}, Lio/sentry/protocol/SdkVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p2, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, p2}, Lio/sentry/protocol/SdkVersion;->access$002(Lio/sentry/protocol/SdkVersion;Ljava/util/Set;)Ljava/util/Set;

    .line 284
    new-instance p0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, p0}, Lio/sentry/protocol/SdkVersion;->access$102(Lio/sentry/protocol/SdkVersion;Ljava/util/Set;)Ljava/util/Set;

    .line 286
    invoke-virtual {p1, v3}, Lio/sentry/protocol/SdkVersion;->setUnknown(Ljava/util/Map;)V

    return-object p1

    .line 277
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing required field \"version\""

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 278
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    throw p0

    .line 271
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing required field \"name\""

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 272
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    throw p0

    :sswitch_data_0
    .sparse-switch
        0x337a8b -> :sswitch_3
        0x14f51cd8 -> :sswitch_2
        0x2cc154ed -> :sswitch_1
        0x58a2451f -> :sswitch_0
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

    .line 224
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/SdkVersion$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SdkVersion;

    move-result-object p0

    return-object p0
.end method
