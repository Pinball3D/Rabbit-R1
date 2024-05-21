.class public final Lio/sentry/protocol/SentrySpan$Deserializer;
.super Ljava/lang/Object;
.source "SentrySpan.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentrySpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/SentrySpan;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;
    .locals 1

    .line 374
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

    .line 375
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 376
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v0, p0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentrySpan;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 258
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 275
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    sget-object v0, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    move-object/from16 v18, v13

    const-string v13, "trace_id"

    move-object/from16 v19, v12

    const-string v12, "op"

    move-object/from16 v20, v11

    const-string v11, "start_timestamp"

    move-object/from16 v21, v9

    const-string v9, "span_id"

    if-ne v3, v0, :cond_10

    .line 276
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v22, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v22, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "timestamp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v22, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "tags"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v22, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "data"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v22, 0x9

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v22, 0x8

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "measurements"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/16 v22, 0x7

    goto :goto_1

    :sswitch_6
    const-string v3, "_metrics_summary"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    const/16 v22, 0x6

    goto :goto_1

    :sswitch_7
    const-string v3, "status"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/16 v22, 0x5

    goto :goto_1

    :sswitch_8
    const-string v3, "origin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    const/16 v22, 0x4

    goto :goto_1

    :sswitch_9
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    const/16 v22, 0x3

    goto :goto_1

    :sswitch_a
    const-string v3, "description"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    const/16 v22, 0x2

    goto :goto_1

    :sswitch_b
    const-string v3, "parent_span_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_1

    :cond_b
    const/16 v22, 0x1

    goto :goto_1

    :sswitch_c
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_1

    :cond_c
    const/16 v22, 0x0

    :goto_1
    packed-switch v22, :pswitch_data_0

    if-nez v15, :cond_d

    .line 329
    new-instance v15, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v15}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 331
    :cond_d
    invoke-virtual {v1, v2, v15, v0}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_2

    .line 295
    :pswitch_0
    new-instance v0, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lio/sentry/protocol/SentryId$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryId;

    move-result-object v7

    :goto_2
    move-object/from16 v13, v18

    :goto_3
    move-object/from16 v12, v19

    :goto_4
    move-object/from16 v11, v20

    :goto_5
    move-object/from16 v9, v21

    goto/16 :goto_6

    .line 288
    :pswitch_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 290
    :catch_0
    invoke-virtual/range {p1 .. p2}, Lio/sentry/JsonObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 291
    invoke-static {v0}, Lio/sentry/DateUtils;->dateToSeconds(Ljava/util/Date;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_e
    const/4 v6, 0x0

    goto :goto_2

    .line 316
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    goto :goto_2

    .line 319
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/Map;

    goto :goto_2

    .line 304
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 322
    :pswitch_5
    new-instance v0, Lio/sentry/protocol/MeasurementValue$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/MeasurementValue$Deserializer;-><init>()V

    invoke-virtual {v1, v2, v0}, Lio/sentry/JsonObjectReader;->nextMapOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/Map;

    move-result-object v14

    goto :goto_2

    .line 325
    :pswitch_6
    new-instance v0, Lio/sentry/protocol/MetricSummary$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/MetricSummary$Deserializer;-><init>()V

    invoke-virtual {v1, v2, v0}, Lio/sentry/JsonObjectReader;->nextMapOfListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/Map;

    move-result-object v16

    goto :goto_2

    .line 310
    :pswitch_7
    new-instance v0, Lio/sentry/SpanStatus$Deserializer;

    invoke-direct {v0}, Lio/sentry/SpanStatus$Deserializer;-><init>()V

    invoke-virtual {v1, v2, v0}, Lio/sentry/JsonObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lio/sentry/SpanStatus;

    move-object/from16 v13, v18

    goto :goto_4

    .line 313
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    .line 280
    :pswitch_9
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 282
    :catch_1
    invoke-virtual/range {p1 .. p2}, Lio/sentry/JsonObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 283
    invoke-static {v0}, Lio/sentry/DateUtils;->dateToSeconds(Ljava/util/Date;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    :cond_f
    const/4 v5, 0x0

    goto :goto_2

    .line 307
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v13, v18

    move-object/from16 v12, v19

    goto :goto_5

    .line 301
    :pswitch_b
    new-instance v0, Lio/sentry/SpanId$Deserializer;

    invoke-direct {v0}, Lio/sentry/SpanId$Deserializer;-><init>()V

    invoke-virtual {v1, v2, v0}, Lio/sentry/JsonObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lio/sentry/SpanId;

    move-object/from16 v13, v18

    move-object/from16 v12, v19

    move-object/from16 v11, v20

    goto :goto_6

    .line 298
    :pswitch_c
    new-instance v0, Lio/sentry/SpanId$Deserializer;

    invoke-direct {v0}, Lio/sentry/SpanId$Deserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lio/sentry/SpanId$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/SpanId;

    move-result-object v8

    goto/16 :goto_2

    :goto_6
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_10
    if-eqz v5, :cond_16

    if-eqz v7, :cond_15

    if-eqz v8, :cond_14

    if-eqz v10, :cond_13

    if-nez v4, :cond_11

    .line 348
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_7

    :cond_11
    move-object v0, v4

    :goto_7
    if-nez v14, :cond_12

    .line 351
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_8

    :cond_12
    move-object v2, v14

    .line 353
    :goto_8
    new-instance v3, Lio/sentry/protocol/SentrySpan;

    move-object v4, v3

    move-object/from16 v9, v21

    move-object/from16 v11, v20

    move-object/from16 v12, v19

    move-object/from16 v13, v18

    move-object v14, v0

    move-object v0, v15

    move-object v15, v2

    invoke-direct/range {v4 .. v17}, Lio/sentry/protocol/SentrySpan;-><init>(Ljava/lang/Double;Ljava/lang/Double;Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanStatus;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 368
    invoke-virtual {v3, v0}, Lio/sentry/protocol/SentrySpan;->setUnknown(Ljava/util/Map;)V

    .line 369
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object v3

    :cond_13
    move-object/from16 v0, p0

    .line 345
    invoke-direct {v0, v12, v2}, Lio/sentry/protocol/SentrySpan$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    :cond_14
    move-object/from16 v0, p0

    .line 342
    invoke-direct {v0, v9, v2}, Lio/sentry/protocol/SentrySpan$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    :cond_15
    move-object/from16 v0, p0

    .line 339
    invoke-direct {v0, v13, v2}, Lio/sentry/protocol/SentrySpan$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    :cond_16
    move-object/from16 v0, p0

    .line 336
    invoke-direct {v0, v11, v2}, Lio/sentry/protocol/SentrySpan$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x77ea41d0 -> :sswitch_c
        -0x68c5dc65 -> :sswitch_b
        -0x66ca7c04 -> :sswitch_a
        -0x5b03aa87 -> :sswitch_9
        -0x3c1e50da -> :sswitch_8
        -0x3532300e -> :sswitch_7
        -0x28af0e15 -> :sswitch_6
        -0x159763c9 -> :sswitch_5
        0xde1 -> :sswitch_4
        0x2eefaa -> :sswitch_3
        0x363419 -> :sswitch_2
        0x3492916 -> :sswitch_1
        0x4bb73e55 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

    .line 252
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/SentrySpan$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentrySpan;

    move-result-object p0

    return-object p0
.end method
