.class public final Lio/sentry/protocol/SentryStackFrame$Deserializer;
.super Ljava/lang/Object;
.source "SentryStackFrame.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentryStackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/SentryStackFrame;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryStackFrame;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 402
    new-instance p0, Lio/sentry/protocol/SentryStackFrame;

    invoke-direct {p0}, Lio/sentry/protocol/SentryStackFrame;-><init>()V

    .line 404
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 v0, 0x0

    .line 405
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_12

    .line 406
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "platform"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "abs_path"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "function"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "context_line"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "instruction_addr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "colno"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "lock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "symbol_addr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "filename"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_a
    const-string v2, "symbol"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_b
    const-string v2, "native"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_1

    :cond_b
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_c
    const-string v2, "module"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_1

    :cond_c
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_d
    const-string v2, "lineno"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_1

    :cond_d
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_e
    const-string v2, "raw_function"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_1

    :cond_e
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_f
    const-string v2, "in_app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_1

    :cond_f
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_10
    const-string v2, "image_addr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_1

    :cond_10
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    if-nez v0, :cond_11

    .line 461
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 463
    :cond_11
    invoke-virtual {p1, p2, v0, v1}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 439
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackFrame;->access$1002(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 424
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackFrame;->access$502(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 412
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackFrame;->access$102(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 427
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackFrame;->access$602(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 448
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackFrame;->access$1302(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 421
    :pswitch_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackFrame;->access$402(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto/16 :goto_0

    .line 457
    :pswitch_6
    new-instance v1, Lio/sentry/SentryLockReason$Deserializer;

    invoke-direct {v1}, Lio/sentry/SentryLockReason$Deserializer;-><init>()V

    invoke-virtual {p1, p2, v1}, Lio/sentry/JsonObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/SentryLockReason;

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackFrame;->access$1602(Lio/sentry/protocol/SentryStackFrame;Lio/sentry/SentryLockReason;)Lio/sentry/SentryLockReason;

    goto/16 :goto_0

    .line 445
    :pswitch_7
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackFrame;->access$1202(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 409
    :pswitch_8
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackFrame;->access$002(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 433
    :pswitch_9
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackFrame;->access$802(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 454
    :pswitch_a
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackFrame;->access$1502(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 436
    :pswitch_b
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackFrame;->access$902(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 415
    :pswitch_c
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackFrame;->access$202(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 418
    :pswitch_d
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackFrame;->access$302(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto/16 :goto_0

    .line 451
    :pswitch_e
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackFrame;->access$1402(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 430
    :pswitch_f
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackFrame;->access$702(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 442
    :pswitch_10
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/SentryStackFrame;->access$1102(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 467
    :cond_12
    invoke-virtual {p0, v0}, Lio/sentry/protocol/SentryStackFrame;->setUnknown(Ljava/util/Map;)V

    .line 468
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5607b3ab -> :sswitch_10
        -0x469863f9 -> :sswitch_f
        -0x426465f1 -> :sswitch_e
        -0x41b96f4b -> :sswitch_d
        -0x3fb45994 -> :sswitch_c
        -0x3ebdafe9 -> :sswitch_b
        -0x34e68a68 -> :sswitch_a
        -0x301acbba -> :sswitch_9
        -0x2bcbadf9 -> :sswitch_8
        -0x13af61c8 -> :sswitch_7
        0x32c52b -> :sswitch_6
        0x5a72f41 -> :sswitch_5
        0x18731102 -> :sswitch_4
        0x428f6884 -> :sswitch_3
        0x524f73d8 -> :sswitch_2
        0x66211bd2 -> :sswitch_1
        0x6fbd6873 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

    .line 398
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/SentryStackFrame$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryStackFrame;

    move-result-object p0

    return-object p0
.end method
