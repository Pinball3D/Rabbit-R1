.class public final Lio/sentry/protocol/SdkInfo$Deserializer;
.super Ljava/lang/Object;
.source "SdkInfo.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SdkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/SdkInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SdkInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    new-instance p0, Lio/sentry/protocol/SdkInfo;

    invoke-direct {p0}, Lio/sentry/protocol/SdkInfo;-><init>()V

    .line 125
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 v0, 0x0

    .line 126
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_5

    .line 127
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "version_minor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "version_major"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "version_patchlevel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_3
    const-string v2, "sdk_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    if-nez v0, :cond_4

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    :cond_4
    invoke-virtual {p1, p2, v0, v1}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SdkInfo;->access$202(Lio/sentry/protocol/SdkInfo;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto :goto_0

    .line 133
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SdkInfo;->access$102(Lio/sentry/protocol/SdkInfo;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto :goto_0

    .line 139
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SdkInfo;->access$302(Lio/sentry/protocol/SdkInfo;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto :goto_0

    .line 130
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SdkInfo;->access$002(Lio/sentry/protocol/SdkInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 149
    :cond_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    .line 151
    invoke-virtual {p0, v0}, Lio/sentry/protocol/SdkInfo;->setUnknown(Ljava/util/Map;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x101b0b70 -> :sswitch_3
        0x297daa03 -> :sswitch_2
        0x423c3392 -> :sswitch_1
        0x423fe58e -> :sswitch_0
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

    .line 117
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/SdkInfo$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SdkInfo;

    move-result-object p0

    return-object p0
.end method
