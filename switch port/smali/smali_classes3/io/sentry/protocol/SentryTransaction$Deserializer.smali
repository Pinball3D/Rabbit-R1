.class public final Lio/sentry/protocol/SentryTransaction$Deserializer;
.super Ljava/lang/Object;
.source "SentryTransaction.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentryTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/SentryTransaction;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryTransaction;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 263
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    .line 266
    new-instance p0, Lio/sentry/protocol/SentryTransaction;

    const-string v1, ""

    const-wide/16 v2, 0x0

    .line 269
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    new-instance v7, Lio/sentry/protocol/TransactionInfo;

    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    .line 274
    invoke-virtual {v0}, Lio/sentry/protocol/TransactionNameSource;->apiName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lio/sentry/protocol/TransactionInfo;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/sentry/protocol/SentryTransaction;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lio/sentry/protocol/TransactionInfo;)V

    .line 277
    new-instance v0, Lio/sentry/SentryBaseEvent$Deserializer;

    invoke-direct {v0}, Lio/sentry/SentryBaseEvent$Deserializer;-><init>()V

    const/4 v1, 0x0

    .line 279
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_a

    .line 280
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "transaction"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_1
    const-string v3, "transaction_info"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_2
    const-string v3, "spans"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_3
    const-string v3, "timestamp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_4
    const-string v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_5
    const-string v3, "measurements"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_6
    const-string v3, "_metrics_summary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_7
    const-string v3, "start_timestamp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 337
    invoke-virtual {v0, p0, v2, p1, p2}, Lio/sentry/SentryBaseEvent$Deserializer;->deserializeValue(Lio/sentry/SentryBaseEvent;Ljava/lang/String;Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v1, :cond_9

    .line 339
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 341
    :cond_9
    invoke-virtual {p1, p2, v1, v2}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lio/sentry/protocol/SentryTransaction;->access$002(Lio/sentry/protocol/SentryTransaction;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 333
    :pswitch_1
    new-instance v2, Lio/sentry/protocol/TransactionInfo$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/TransactionInfo$Deserializer;-><init>()V

    .line 334
    invoke-virtual {v2, p1, p2}, Lio/sentry/protocol/TransactionInfo$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/TransactionInfo;

    move-result-object v2

    .line 333
    invoke-static {p0, v2}, Lio/sentry/protocol/SentryTransaction;->access$602(Lio/sentry/protocol/SentryTransaction;Lio/sentry/protocol/TransactionInfo;)Lio/sentry/protocol/TransactionInfo;

    goto/16 :goto_0

    .line 312
    :pswitch_2
    new-instance v2, Lio/sentry/protocol/SentrySpan$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/SentrySpan$Deserializer;-><init>()V

    .line 313
    invoke-virtual {p1, p2, v2}, Lio/sentry/JsonObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 315
    invoke-static {p0}, Lio/sentry/protocol/SentryTransaction;->access$300(Lio/sentry/protocol/SentryTransaction;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 300
    :pswitch_3
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 302
    invoke-static {p0, v2}, Lio/sentry/protocol/SentryTransaction;->access$202(Lio/sentry/protocol/SentryTransaction;Ljava/lang/Double;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 305
    :catch_0
    invoke-virtual {p1, p2}, Lio/sentry/JsonObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 307
    invoke-static {v2}, Lio/sentry/DateUtils;->dateToSeconds(Ljava/util/Date;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p0, v2}, Lio/sentry/protocol/SentryTransaction;->access$202(Lio/sentry/protocol/SentryTransaction;Ljava/lang/Double;)Ljava/lang/Double;

    goto/16 :goto_0

    .line 319
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextString()Ljava/lang/String;

    goto/16 :goto_0

    .line 322
    :pswitch_5
    new-instance v2, Lio/sentry/protocol/MeasurementValue$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/MeasurementValue$Deserializer;-><init>()V

    .line 323
    invoke-virtual {p1, p2, v2}, Lio/sentry/JsonObjectReader;->nextMapOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 325
    invoke-static {p0}, Lio/sentry/protocol/SentryTransaction;->access$400(Lio/sentry/protocol/SentryTransaction;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 329
    :pswitch_6
    new-instance v2, Lio/sentry/protocol/MetricSummary$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/MetricSummary$Deserializer;-><init>()V

    .line 330
    invoke-virtual {p1, p2, v2}, Lio/sentry/JsonObjectReader;->nextMapOfListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/Map;

    move-result-object v2

    .line 329
    invoke-static {p0, v2}, Lio/sentry/protocol/SentryTransaction;->access$502(Lio/sentry/protocol/SentryTransaction;Ljava/util/Map;)Ljava/util/Map;

    goto/16 :goto_0

    .line 287
    :pswitch_7
    :try_start_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 289
    invoke-static {p0, v2}, Lio/sentry/protocol/SentryTransaction;->access$102(Lio/sentry/protocol/SentryTransaction;Ljava/lang/Double;)Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 292
    :catch_1
    invoke-virtual {p1, p2}, Lio/sentry/JsonObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 294
    invoke-static {v2}, Lio/sentry/DateUtils;->dateToSeconds(Ljava/util/Date;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p0, v2}, Lio/sentry/protocol/SentryTransaction;->access$102(Lio/sentry/protocol/SentryTransaction;Ljava/lang/Double;)Ljava/lang/Double;

    goto/16 :goto_0

    .line 346
    :cond_a
    invoke-virtual {p0, v1}, Lio/sentry/protocol/SentryTransaction;->setUnknown(Ljava/util/Map;)V

    .line 347
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x5b03aa87 -> :sswitch_7
        -0x28af0e15 -> :sswitch_6
        -0x159763c9 -> :sswitch_5
        0x368f3a -> :sswitch_4
        0x3492916 -> :sswitch_3
        0x688f269 -> :sswitch_2
        0x1e52656f -> :sswitch_1
        0x7fa0d2de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public bridge synthetic deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 257
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/SentryTransaction$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryTransaction;

    move-result-object p0

    return-object p0
.end method
