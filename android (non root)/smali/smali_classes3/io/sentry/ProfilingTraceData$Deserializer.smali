.class public final Lio/sentry/ProfilingTraceData$Deserializer;
.super Ljava/lang/Object;
.source "ProfilingTraceData.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/ProfilingTraceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/ProfilingTraceData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/ProfilingTraceData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 452
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    .line 453
    new-instance p0, Lio/sentry/ProfilingTraceData;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/sentry/ProfilingTraceData;-><init>(Lio/sentry/ProfilingTraceData$1;)V

    .line 456
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_1b

    .line 457
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "transactions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0x18

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "sampled_profile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0x17

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "platform"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v3, 0x16

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "trace_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v3, 0x15

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "truncation_reason"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v3, 0x14

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "device_os_version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v3, 0x13

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "transaction_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "architecture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "device_os_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "transaction_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "environment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "version_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "version_code"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "device_cpu_frequencies"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "device_physical_memory_bytes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "measurements"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "duration_ns"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "device_is_emulator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_1

    :cond_12
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_12
    const-string v2, "device_model"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_1

    :cond_13
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_13
    const-string v2, "device_os_build_number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_1

    :cond_14
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_14
    const-string v2, "profile_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_1

    :cond_15
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_15
    const-string v2, "device_locale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_1

    :cond_16
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_16
    const-string v2, "build_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_1

    :cond_17
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_17
    const-string v2, "android_api_level"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_1

    :cond_18
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_18
    const-string v2, "device_manufacturer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_1

    :cond_19
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    if-nez v0, :cond_1a

    .line 613
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 615
    :cond_1a
    invoke-virtual {p1, p2, v0, v1}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 562
    :pswitch_0
    new-instance v1, Lio/sentry/ProfilingTransactionData$Deserializer;

    invoke-direct {v1}, Lio/sentry/ProfilingTransactionData$Deserializer;-><init>()V

    .line 563
    invoke-virtual {p1, p2, v1}, Lio/sentry/JsonObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 565
    invoke-static {p0}, Lio/sentry/ProfilingTraceData;->access$1800(Lio/sentry/ProfilingTraceData;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 606
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 608
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$2502(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 526
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 528
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$1202(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 575
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 577
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$2002(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 593
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 595
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$2302(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 496
    :pswitch_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 498
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$702(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 569
    :pswitch_6
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 571
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$1902(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 508
    :pswitch_7
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 510
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$902(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 490
    :pswitch_8
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 492
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$602(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 538
    :pswitch_9
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 540
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$1402(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 587
    :pswitch_a
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 589
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$2202(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 556
    :pswitch_b
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 558
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$1702(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 550
    :pswitch_c
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 552
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$1602(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 514
    :pswitch_d
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 516
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$1002(Lio/sentry/ProfilingTraceData;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 520
    :pswitch_e
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 522
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$1102(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 599
    :pswitch_f
    new-instance v1, Lio/sentry/profilemeasurements/ProfileMeasurement$Deserializer;

    invoke-direct {v1}, Lio/sentry/profilemeasurements/ProfileMeasurement$Deserializer;-><init>()V

    .line 600
    invoke-virtual {p1, p2, v1}, Lio/sentry/JsonObjectReader;->nextMapOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 602
    invoke-static {p0}, Lio/sentry/ProfilingTraceData;->access$2400(Lio/sentry/ProfilingTraceData;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 544
    :pswitch_10
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 546
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$1502(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 502
    :pswitch_11
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 504
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$802(Lio/sentry/ProfilingTraceData;Z)Z

    goto/16 :goto_0

    .line 478
    :pswitch_12
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 480
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$402(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 484
    :pswitch_13
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 486
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$502(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 581
    :pswitch_14
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 583
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$2102(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 466
    :pswitch_15
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 468
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$202(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 532
    :pswitch_16
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 534
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$1302(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 460
    :pswitch_17
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 462
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$102(Lio/sentry/ProfilingTraceData;I)I

    goto/16 :goto_0

    .line 472
    :pswitch_18
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 474
    invoke-static {p0, v1}, Lio/sentry/ProfilingTraceData;->access$302(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 619
    :cond_1b
    invoke-virtual {p0, v0}, Lio/sentry/ProfilingTraceData;->setUnknown(Ljava/util/Map;)V

    .line 620
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7f2b14e6 -> :sswitch_18
        -0x761ad0b1 -> :sswitch_17
        -0x55461374 -> :sswitch_16
        -0x45ddbf9d -> :sswitch_15
        -0x41b8e48f -> :sswitch_14
        -0x2ab74f34 -> :sswitch_13
        -0x233b1c00 -> :sswitch_12
        -0x1e8c4ddf -> :sswitch_11
        -0x1c7eb3b0 -> :sswitch_10
        -0x159763c9 -> :sswitch_f
        -0x13d06b14 -> :sswitch_e
        -0xca6e506 -> :sswitch_d
        -0x6236f0c -> :sswitch_c
        -0x61ea26e -> :sswitch_b
        -0x51ecded -> :sswitch_a
        0x1e547b4c -> :sswitch_9
        0x2f79431d -> :sswitch_8
        0x320c6953 -> :sswitch_7
        0x3c3c4a1c -> :sswitch_6
        0x3ebcb306 -> :sswitch_5
        0x4560227a -> :sswitch_4
        0x4bb73e55 -> :sswitch_3
        0x6fbd6873 -> :sswitch_2
        0x746ad664 -> :sswitch_1
        0x74798955 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

    .line 446
    invoke-virtual {p0, p1, p2}, Lio/sentry/ProfilingTraceData$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/ProfilingTraceData;

    move-result-object p0

    return-object p0
.end method
