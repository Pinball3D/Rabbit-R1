.class public final Lio/sentry/protocol/ViewHierarchy$Deserializer;
.super Ljava/lang/Object;
.source "ViewHierarchy.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/ViewHierarchy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/ViewHierarchy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/ViewHierarchy;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 p0, 0x0

    move-object v0, p0

    move-object v1, v0

    .line 84
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_3

    .line 85
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "rendering_system"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "windows"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 97
    :cond_0
    invoke-virtual {p1, p2, v1, v2}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Lio/sentry/protocol/ViewHierarchyNode$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/ViewHierarchyNode$Deserializer;-><init>()V

    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    .line 103
    new-instance p1, Lio/sentry/protocol/ViewHierarchy;

    invoke-direct {p1, p0, v0}, Lio/sentry/protocol/ViewHierarchy;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 104
    invoke-virtual {p1, v1}, Lio/sentry/protocol/ViewHierarchy;->setUnknown(Ljava/util/Map;)V

    return-object p1
.end method

.method public bridge synthetic deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/ViewHierarchy$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/ViewHierarchy;

    move-result-object p0

    return-object p0
.end method
