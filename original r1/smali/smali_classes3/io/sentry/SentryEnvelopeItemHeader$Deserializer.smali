.class public final Lio/sentry/SentryEnvelopeItemHeader$Deserializer;
.super Ljava/lang/Object;
.source "SentryEnvelopeItemHeader.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryEnvelopeItemHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/SentryEnvelopeItemHeader;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;
    .locals 1

    .line 181
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Missing required field \""

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 182
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 183
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v0, p0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryEnvelopeItemHeader;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move v4, v1

    .line 143
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v8, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v9, "type"

    if-ne v2, v8, :cond_6

    .line 144
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v10, -0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "content_type"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v10, 0x4

    goto :goto_1

    :sswitch_1
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x3

    goto :goto_1

    :sswitch_2
    const-string v8, "attachment_type"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v10, 0x2

    goto :goto_1

    :sswitch_3
    const-string v8, "filename"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v10, 0x1

    goto :goto_1

    :sswitch_4
    const-string v8, "length"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    move v10, v1

    :goto_1
    packed-switch v10, :pswitch_data_0

    if-nez v0, :cond_5

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 165
    :cond_5
    invoke-virtual {p1, p2, v0, v2}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_0

    .line 153
    :pswitch_1
    new-instance v2, Lio/sentry/SentryItemType$Deserializer;

    invoke-direct {v2}, Lio/sentry/SentryItemType$Deserializer;-><init>()V

    invoke-virtual {p1, p2, v2}, Lio/sentry/JsonObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/SentryItemType;

    move-object v3, v2

    goto :goto_0

    .line 159
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_0

    .line 150
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_0

    .line 156
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextInt()I

    move-result v4

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    .line 172
    new-instance p0, Lio/sentry/SentryEnvelopeItemHeader;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, v0}, Lio/sentry/SentryEnvelopeItemHeader;->setUnknown(Ljava/util/Map;)V

    .line 175
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object p0

    .line 170
    :cond_7
    invoke-direct {p0, v9, p2}, Lio/sentry/SentryEnvelopeItemHeader$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x41f1c51a -> :sswitch_4
        -0x2bcbadf9 -> :sswitch_3
        -0x281cd32a -> :sswitch_2
        0x368f3a -> :sswitch_1
        0x3194f740 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 130
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryEnvelopeItemHeader$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object p0

    return-object p0
.end method
