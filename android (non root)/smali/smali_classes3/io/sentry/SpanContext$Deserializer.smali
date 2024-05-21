.class public final Lio/sentry/SpanContext$Deserializer;
.super Ljava/lang/Object;
.source "SpanContext.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SpanContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/SpanContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/SpanContext;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 297
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 p0, 0x0

    move-object v1, p0

    move-object v2, v1

    move-object v4, v2

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    .line 308
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v0, v3, :cond_9

    .line 309
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v5, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "trace_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x7

    goto :goto_1

    :sswitch_1
    const-string v3, "tags"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x6

    goto :goto_1

    :sswitch_2
    const-string v3, "op"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x5

    goto :goto_1

    :sswitch_3
    const-string v3, "status"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x4

    goto :goto_1

    :sswitch_4
    const-string v3, "origin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_5
    const-string v3, "description"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_6
    const-string v3, "parent_span_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_7
    const-string v3, "span_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    if-nez v6, :cond_8

    .line 339
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 341
    :cond_8
    invoke-virtual {p1, p2, v6, v0}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :pswitch_0
    new-instance v0, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/SentryId$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 335
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 334
    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    move-object v10, v0

    goto/16 :goto_0

    .line 321
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 327
    :pswitch_3
    new-instance v0, Lio/sentry/SpanStatus$Deserializer;

    invoke-direct {v0}, Lio/sentry/SpanStatus$Deserializer;-><init>()V

    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SpanStatus;

    move-object v8, v0

    goto/16 :goto_0

    .line 330
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_0

    .line 324
    :pswitch_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_0

    .line 318
    :pswitch_6
    new-instance v0, Lio/sentry/SpanId$Deserializer;

    invoke-direct {v0}, Lio/sentry/SpanId$Deserializer;-><init>()V

    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SpanId;

    move-object v4, v0

    goto/16 :goto_0

    .line 315
    :pswitch_7
    new-instance v0, Lio/sentry/SpanId$Deserializer;

    invoke-direct {v0}, Lio/sentry/SpanId$Deserializer;-><init>()V

    invoke-virtual {v0, p1, p2}, Lio/sentry/SpanId$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/SpanId;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_0

    :cond_9
    if-eqz v1, :cond_d

    if-eqz v2, :cond_c

    if-nez p0, :cond_a

    const-string p0, ""

    :cond_a
    move-object v3, p0

    .line 370
    new-instance p0, Lio/sentry/SpanContext;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/String;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;)V

    .line 371
    invoke-virtual {p0, v7}, Lio/sentry/SpanContext;->setDescription(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0, v8}, Lio/sentry/SpanContext;->setStatus(Lio/sentry/SpanStatus;)V

    .line 373
    invoke-virtual {p0, v9}, Lio/sentry/SpanContext;->setOrigin(Ljava/lang/String;)V

    if-eqz v10, :cond_b

    .line 375
    iput-object v10, p0, Lio/sentry/SpanContext;->tags:Ljava/util/Map;

    .line 377
    :cond_b
    invoke-virtual {p0, v6}, Lio/sentry/SpanContext;->setUnknown(Ljava/util/Map;)V

    .line 378
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object p0

    .line 355
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing required field \"span_id\""

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 356
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    throw p0

    .line 348
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing required field \"trace_id\""

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 349
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77ea41d0 -> :sswitch_7
        -0x68c5dc65 -> :sswitch_6
        -0x66ca7c04 -> :sswitch_5
        -0x3c1e50da -> :sswitch_4
        -0x3532300e -> :sswitch_3
        0xde1 -> :sswitch_2
        0x363419 -> :sswitch_1
        0x4bb73e55 -> :sswitch_0
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

    .line 292
    invoke-virtual {p0, p1, p2}, Lio/sentry/SpanContext$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/SpanContext;

    move-result-object p0

    return-object p0
.end method
