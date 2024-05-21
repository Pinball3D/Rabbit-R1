.class public final Lio/sentry/protocol/DebugMeta$Deserializer;
.super Ljava/lang/Object;
.source "DebugMeta.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/DebugMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/DebugMeta;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/DebugMeta;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    new-instance p0, Lio/sentry/protocol/DebugMeta;

    invoke-direct {p0}, Lio/sentry/protocol/DebugMeta;-><init>()V

    .line 104
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 v0, 0x0

    .line 105
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_3

    .line 106
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "images"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "sdk_info"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 118
    :cond_0
    invoke-virtual {p1, p2, v0, v1}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    new-instance v1, Lio/sentry/protocol/SdkInfo$Deserializer;

    invoke-direct {v1}, Lio/sentry/protocol/SdkInfo$Deserializer;-><init>()V

    invoke-virtual {p1, p2, v1}, Lio/sentry/JsonObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/protocol/SdkInfo;

    invoke-static {p0, v1}, Lio/sentry/protocol/DebugMeta;->access$002(Lio/sentry/protocol/DebugMeta;Lio/sentry/protocol/SdkInfo;)Lio/sentry/protocol/SdkInfo;

    goto :goto_0

    .line 112
    :cond_2
    new-instance v1, Lio/sentry/protocol/DebugImage$Deserializer;

    invoke-direct {v1}, Lio/sentry/protocol/DebugImage$Deserializer;-><init>()V

    invoke-virtual {p1, p2, v1}, Lio/sentry/JsonObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/DebugMeta;->access$102(Lio/sentry/protocol/DebugMeta;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    .line 124
    invoke-virtual {p0, v0}, Lio/sentry/protocol/DebugMeta;->setUnknown(Ljava/util/Map;)V

    return-object p0
.end method

.method public bridge synthetic deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/DebugMeta$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/DebugMeta;

    move-result-object p0

    return-object p0
.end method
