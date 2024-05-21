.class public final Lio/sentry/TraceContext$TraceContextUser$Deserializer;
.super Ljava/lang/Object;
.source "TraceContext.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/TraceContext$TraceContextUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/TraceContext$TraceContextUser;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/TraceContext$TraceContextUser;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 p0, 0x0

    move-object v0, p0

    move-object v1, v0

    move-object v2, v1

    .line 150
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v3, v4, :cond_3

    .line 151
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "segment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v2, :cond_0

    .line 161
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 163
    :cond_0
    invoke-virtual {p1, p2, v2, v3}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_3
    new-instance p2, Lio/sentry/TraceContext$TraceContextUser;

    invoke-direct {p2, v0, v1, p0}, Lio/sentry/TraceContext$TraceContextUser;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/sentry/TraceContext$1;)V

    .line 168
    invoke-virtual {p2, v2}, Lio/sentry/TraceContext$TraceContextUser;->setUnknown(Ljava/util/Map;)V

    .line 169
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

    .line 141
    invoke-virtual {p0, p1, p2}, Lio/sentry/TraceContext$TraceContextUser$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/TraceContext$TraceContextUser;

    move-result-object p0

    return-object p0
.end method
