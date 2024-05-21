.class public final Lio/sentry/MonitorContexts$Deserializer;
.super Ljava/lang/Object;
.source "MonitorContexts.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/MonitorContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/MonitorContexts;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/MonitorContexts;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    new-instance p0, Lio/sentry/MonitorContexts;

    invoke-direct {p0}, Lio/sentry/MonitorContexts;-><init>()V

    .line 71
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    .line 72
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v0, v1, :cond_2

    .line 73
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "trace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0, v0, v1}, Lio/sentry/MonitorContexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Lio/sentry/SpanContext$Deserializer;

    invoke-direct {v0}, Lio/sentry/SpanContext$Deserializer;-><init>()V

    invoke-virtual {v0, p1, p2}, Lio/sentry/SpanContext$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/SpanContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/MonitorContexts;->setTrace(Lio/sentry/SpanContext;)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object p0
.end method

.method public bridge synthetic deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1, p2}, Lio/sentry/MonitorContexts$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/MonitorContexts;

    move-result-object p0

    return-object p0
.end method
