.class public final Lio/sentry/protocol/Device$Deserializer;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/Device;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Device;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 731
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    .line 732
    new-instance p0, Lio/sentry/protocol/Device;

    invoke-direct {p0}, Lio/sentry/protocol/Device;-><init>()V

    const/4 v0, 0x0

    .line 734
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_24

    .line 735
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 736
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "screen_height_pixels"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0x21

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "free_storage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0x20

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "external_free_storage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v3, 0x1f

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "charging"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v3, 0x1e

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "memory_size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v3, 0x1d

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "usable_memory"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v3, 0x1c

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "storage_size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v3, 0x1b

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "external_storage_size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v3, 0x1a

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "screen_width_pixels"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v3, 0x19

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "connection_type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v3, 0x18

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "processor_frequency"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v3, 0x17

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "cpu_description"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v3, 0x16

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "model"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v3, 0x15

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "brand"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v3, 0x14

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "archs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v3, 0x13

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "low_memory"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "free_memory"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "screen_dpi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "screen_density"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "model_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "battery_level"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_17
    const-string v2, "online"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_1

    :cond_18
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_18
    const-string v2, "locale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_1

    :cond_19
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_19
    const-string v2, "family"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_1a
    const-string v2, "battery_temperature"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_1

    :cond_1b
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_1b
    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_1

    :cond_1c
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_1c
    const-string v2, "processor_count"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_1

    :cond_1d
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_1d
    const-string v2, "language"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_1

    :cond_1e
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1e
    const-string v2, "manufacturer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_1

    :cond_1f
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1f
    const-string v2, "simulator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_1

    :cond_20
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_20
    const-string v2, "boot_time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_1

    :cond_21
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_21
    const-string v2, "timezone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_1

    :cond_22
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    if-nez v0, :cond_23

    .line 848
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 850
    :cond_23
    invoke-virtual {p1, p2, v0, v1}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 806
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$2102(Lio/sentry/protocol/Device;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto/16 :goto_0

    .line 794
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$1702(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 800
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$1902(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 767
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$802(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 779
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$1202(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 785
    :pswitch_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$1402(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 791
    :pswitch_6
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$1602(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 797
    :pswitch_7
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$1802(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 803
    :pswitch_8
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$2002(Lio/sentry/protocol/Device;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto/16 :goto_0

    .line 829
    :pswitch_9
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$2802(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 841
    :pswitch_a
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$3202(Lio/sentry/protocol/Device;Ljava/lang/Double;)Ljava/lang/Double;

    goto/16 :goto_0

    .line 844
    :pswitch_b
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$3302(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 750
    :pswitch_c
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$402(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 744
    :pswitch_d
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$202(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 756
    :pswitch_e
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 758
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 759
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 760
    check-cast v2, [Ljava/lang/String;

    invoke-static {p0, v2}, Lio/sentry/protocol/Device;->access$602(Lio/sentry/protocol/Device;[Ljava/lang/String;)[Ljava/lang/String;

    goto/16 :goto_0

    .line 788
    :pswitch_f
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$1502(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 738
    :pswitch_10
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$002(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 823
    :pswitch_11
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$2602(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 782
    :pswitch_12
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$1302(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 812
    :pswitch_13
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$2302(Lio/sentry/protocol/Device;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto/16 :goto_0

    .line 809
    :pswitch_14
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextFloatOrNull()Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$2202(Lio/sentry/protocol/Device;Ljava/lang/Float;)Ljava/lang/Float;

    goto/16 :goto_0

    .line 753
    :pswitch_15
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$502(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 764
    :pswitch_16
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextFloatOrNull()Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$702(Lio/sentry/protocol/Device;Ljava/lang/Float;)Ljava/lang/Float;

    goto/16 :goto_0

    .line 770
    :pswitch_17
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$902(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 835
    :pswitch_18
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$3002(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 747
    :pswitch_19
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$302(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 832
    :pswitch_1a
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextFloatOrNull()Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$2902(Lio/sentry/protocol/Device;Ljava/lang/Float;)Ljava/lang/Float;

    goto/16 :goto_0

    .line 773
    :pswitch_1b
    new-instance v1, Lio/sentry/protocol/Device$DeviceOrientation$Deserializer;

    invoke-direct {v1}, Lio/sentry/protocol/Device$DeviceOrientation$Deserializer;-><init>()V

    invoke-virtual {p1, p2, v1}, Lio/sentry/JsonObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/protocol/Device$DeviceOrientation;

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$1002(Lio/sentry/protocol/Device;Lio/sentry/protocol/Device$DeviceOrientation;)Lio/sentry/protocol/Device$DeviceOrientation;

    goto/16 :goto_0

    .line 838
    :pswitch_1c
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$3102(Lio/sentry/protocol/Device;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto/16 :goto_0

    .line 826
    :pswitch_1d
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$2702(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 741
    :pswitch_1e
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$102(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 776
    :pswitch_1f
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$1102(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 815
    :pswitch_20
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->STRING:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_0

    .line 816
    invoke-virtual {p1, p2}, Lio/sentry/JsonObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$2402(Lio/sentry/protocol/Device;Ljava/util/Date;)Ljava/util/Date;

    goto/16 :goto_0

    .line 820
    :pswitch_21
    invoke-virtual {p1, p2}, Lio/sentry/JsonObjectReader;->nextTimeZoneOrNull(Lio/sentry/ILogger;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/protocol/Device;->access$2502(Lio/sentry/protocol/Device;Ljava/util/TimeZone;)Ljava/util/TimeZone;

    goto/16 :goto_0

    .line 854
    :cond_24
    invoke-virtual {p0, v0}, Lio/sentry/protocol/Device;->setUnknown(Ljava/util/Map;)V

    .line 855
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bc0b807 -> :sswitch_21
        -0x77f42806 -> :sswitch_20
        -0x7618bbfc -> :sswitch_1f
        -0x7561dc2f -> :sswitch_1e
        -0x602d6ca8 -> :sswitch_1d
        -0x5fd834de -> :sswitch_1c
        -0x55cd0a30 -> :sswitch_1b
        -0x5412d9be -> :sswitch_1a
        -0x4c67a49c -> :sswitch_19
        -0x4169f1a6 -> :sswitch_18
        -0x3c5549ad -> :sswitch_17
        -0x3449d12e -> :sswitch_16
        -0x24e5c60f -> :sswitch_15
        -0x21df2feb -> :sswitch_14
        -0x18dba0f6 -> :sswitch_13
        -0x8232dcc -> :sswitch_12
        0xd1b -> :sswitch_11
        0x337a8b -> :sswitch_10
        0x386704c -> :sswitch_f
        0x58c3add -> :sswitch_e
        0x59a4b87 -> :sswitch_d
        0x633fb29 -> :sswitch_c
        0x6e627e5 -> :sswitch_b
        0xe92bdef -> :sswitch_a
        0x2b9f63fb -> :sswitch_9
        0x30bf1c39 -> :sswitch_8
        0x311b7339 -> :sswitch_7
        0x357dab45 -> :sswitch_6
        0x4f5c8e28 -> :sswitch_5
        0x5490d47f -> :sswitch_4
        0x55996271 -> :sswitch_3
        0x56769b9c -> :sswitch_2
        0x5ad8d3a8 -> :sswitch_1
        0x5cc30632 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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

    .line 726
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/Device$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Device;

    move-result-object p0

    return-object p0
.end method
