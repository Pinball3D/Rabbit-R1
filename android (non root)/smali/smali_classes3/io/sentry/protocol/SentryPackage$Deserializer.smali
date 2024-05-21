.class public final Lio/sentry/protocol/SentryPackage$Deserializer;
.super Ljava/lang/Object;
.source "SentryPackage.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentryPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/SentryPackage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryPackage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 p0, 0x0

    move-object v0, p0

    move-object v1, v0

    .line 111
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_3

    .line 112
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 124
    :cond_0
    invoke-virtual {p1, p2, v1, v2}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    if-eqz p0, :cond_5

    if-eqz v0, :cond_4

    .line 143
    new-instance p1, Lio/sentry/protocol/SentryPackage;

    invoke-direct {p1, p0, v0}, Lio/sentry/protocol/SentryPackage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1, v1}, Lio/sentry/protocol/SentryPackage;->setUnknown(Ljava/util/Map;)V

    return-object p1

    .line 138
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing required field \"version\""

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 139
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    throw p0

    .line 132
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing required field \"name\""

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    throw p0
.end method

.method public bridge synthetic deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/SentryPackage$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryPackage;

    move-result-object p0

    return-object p0
.end method
