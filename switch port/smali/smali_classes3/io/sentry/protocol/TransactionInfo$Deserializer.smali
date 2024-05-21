.class public final Lio/sentry/protocol/TransactionInfo$Deserializer;
.super Ljava/lang/Object;
.source "TransactionInfo.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/TransactionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/TransactionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/TransactionInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 p0, 0x0

    move-object v0, p0

    .line 71
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_2

    .line 72
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "source"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 81
    :cond_0
    invoke-virtual {p1, p2, v0, v1}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 86
    :cond_2
    new-instance p2, Lio/sentry/protocol/TransactionInfo;

    invoke-direct {p2, p0}, Lio/sentry/protocol/TransactionInfo;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2, v0}, Lio/sentry/protocol/TransactionInfo;->setUnknown(Ljava/util/Map;)V

    .line 88
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object p2
.end method

.method public bridge synthetic deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/TransactionInfo$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/TransactionInfo;

    move-result-object p0

    return-object p0
.end method
