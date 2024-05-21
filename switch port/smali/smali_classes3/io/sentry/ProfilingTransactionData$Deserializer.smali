.class public final Lio/sentry/ProfilingTransactionData$Deserializer;
.super Ljava/lang/Object;
.source "ProfilingTransactionData.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/ProfilingTransactionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/ProfilingTransactionData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/ProfilingTransactionData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    .line 184
    new-instance p0, Lio/sentry/ProfilingTransactionData;

    invoke-direct {p0}, Lio/sentry/ProfilingTransactionData;-><init>()V

    const/4 v0, 0x0

    .line 187
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_9

    .line 188
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "relative_cpu_start_ms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_1
    const-string v2, "relative_cpu_end_ms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_2
    const-string v2, "trace_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_5
    const-string v2, "relative_end_ns"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_6
    const-string v2, "relative_start_ns"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    if-nez v0, :cond_8

    .line 234
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 236
    :cond_8
    invoke-virtual {p1, p2, v0, v1}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 223
    invoke-static {p0, v1}, Lio/sentry/ProfilingTransactionData;->access$502(Lio/sentry/ProfilingTransactionData;Ljava/lang/Long;)Ljava/lang/Long;

    goto :goto_0

    .line 227
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 229
    invoke-static {p0, v1}, Lio/sentry/ProfilingTransactionData;->access$602(Lio/sentry/ProfilingTransactionData;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 197
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    invoke-static {p0, v1}, Lio/sentry/ProfilingTransactionData;->access$102(Lio/sentry/ProfilingTransactionData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 203
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    invoke-static {p0, v1}, Lio/sentry/ProfilingTransactionData;->access$202(Lio/sentry/ProfilingTransactionData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 191
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    invoke-static {p0, v1}, Lio/sentry/ProfilingTransactionData;->access$002(Lio/sentry/ProfilingTransactionData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 215
    :pswitch_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    invoke-static {p0, v1}, Lio/sentry/ProfilingTransactionData;->access$402(Lio/sentry/ProfilingTransactionData;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 209
    :pswitch_6
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 211
    invoke-static {p0, v1}, Lio/sentry/ProfilingTransactionData;->access$302(Lio/sentry/ProfilingTransactionData;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 240
    :cond_9
    invoke-virtual {p0, v0}, Lio/sentry/ProfilingTransactionData;->setUnknown(Ljava/util/Map;)V

    .line 241
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6b2a92b -> :sswitch_6
        -0x50b0384 -> :sswitch_5
        0xd1b -> :sswitch_4
        0x337a8b -> :sswitch_3
        0x4bb73e55 -> :sswitch_2
        0x5d612954 -> :sswitch_1
        0x716221ed -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 178
    invoke-virtual {p0, p1, p2}, Lio/sentry/ProfilingTransactionData$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/ProfilingTransactionData;

    move-result-object p0

    return-object p0
.end method
