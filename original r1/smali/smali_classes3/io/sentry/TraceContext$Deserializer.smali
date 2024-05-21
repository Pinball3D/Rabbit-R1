.class public final Lio/sentry/TraceContext$Deserializer;
.super Ljava/lang/Object;
.source "TraceContext.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/TraceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/TraceContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;
    .locals 1

    .line 330
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

    .line 331
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 332
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v0, p0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/TraceContext;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 244
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    .line 258
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v10

    sget-object v15, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v0, "public_key"

    move-object/from16 v16, v13

    const-string v13, "trace_id"

    if-ne v10, v15, :cond_b

    .line 259
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v10

    .line 260
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v17, -0x1

    sparse-switch v15, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "transaction"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v17, 0x9

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v17, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "sampled"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v17, 0x7

    goto :goto_1

    :sswitch_3
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v17, 0x6

    goto :goto_1

    :sswitch_4
    const-string v0, "release"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v17, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "sample_rate"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v17, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "user"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/16 v17, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "environment"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    const/16 v17, 0x2

    goto :goto_1

    :sswitch_8
    const-string v0, "user_id"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    const/16 v17, 0x1

    goto :goto_1

    :sswitch_9
    const-string v0, "user_segment"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    const/16 v17, 0x0

    :goto_1
    packed-switch v17, :pswitch_data_0

    if-nez v14, :cond_a

    .line 293
    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v14}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 295
    :cond_a
    invoke-virtual {v1, v2, v14, v10}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_2

    .line 283
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_2

    .line 265
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_2

    .line 289
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_3

    .line 262
    :pswitch_3
    new-instance v0, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lio/sentry/protocol/SentryId$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    move-object v5, v0

    :goto_2
    move-object/from16 v13, v16

    goto :goto_3

    .line 268
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    .line 286
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_2

    .line 274
    :pswitch_6
    new-instance v0, Lio/sentry/TraceContext$TraceContextUser$Deserializer;

    invoke-direct {v0}, Lio/sentry/TraceContext$TraceContextUser$Deserializer;-><init>()V

    invoke-virtual {v1, v2, v0}, Lio/sentry/JsonObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/TraceContext$TraceContextUser;

    move-object v3, v0

    goto :goto_2

    .line 271
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_2

    .line 277
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_2

    .line 280
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :goto_3
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_b
    if-eqz v5, :cond_f

    if-eqz v7, :cond_e

    if-eqz v3, :cond_d

    if-nez v4, :cond_c

    .line 307
    invoke-virtual {v3}, Lio/sentry/TraceContext$TraceContextUser;->getId()Ljava/lang/String;

    move-result-object v4

    :cond_c
    if-nez v6, :cond_d

    .line 310
    invoke-virtual {v3}, Lio/sentry/TraceContext$TraceContextUser;->getSegment()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    move-object v0, v4

    goto :goto_4

    :cond_d
    move-object v0, v4

    move-object v10, v6

    .line 313
    :goto_4
    new-instance v2, Lio/sentry/TraceContext;

    move-object v4, v2

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v0

    move-object/from16 v13, v16

    invoke-direct/range {v4 .. v13}, Lio/sentry/TraceContext;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v2, v14}, Lio/sentry/TraceContext;->setUnknown(Ljava/util/Map;)V

    .line 325
    invoke-virtual/range {p1 .. p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object v2

    :cond_e
    move-object v1, v0

    move-object/from16 v0, p0

    .line 303
    invoke-direct {v0, v1, v2}, Lio/sentry/TraceContext$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    :cond_f
    move-object/from16 v0, p0

    .line 300
    invoke-direct {v0, v13, v2}, Lio/sentry/TraceContext$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x2f6bc941 -> :sswitch_9
        -0x8c511f1 -> :sswitch_8
        -0x51ecded -> :sswitch_7
        0x36ebcb -> :sswitch_6
        0x9218a55 -> :sswitch_5
        0x41012807 -> :sswitch_4
        0x4bb73e55 -> :sswitch_3
        0x6f273ffa -> :sswitch_2
        0x71892389 -> :sswitch_1
        0x7fa0d2de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 240
    invoke-virtual {p0, p1, p2}, Lio/sentry/TraceContext$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/TraceContext;

    move-result-object p0

    return-object p0
.end method
