.class public final Lio/sentry/SentryAppStartProfilingOptions$Deserializer;
.super Ljava/lang/Object;
.source "SentryAppStartProfilingOptions.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryAppStartProfilingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/SentryAppStartProfilingOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryAppStartProfilingOptions;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    .line 156
    new-instance p0, Lio/sentry/SentryAppStartProfilingOptions;

    invoke-direct {p0}, Lio/sentry/SentryAppStartProfilingOptions;-><init>()V

    const/4 v0, 0x0

    .line 159
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_9

    .line 160
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "profile_sample_rate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_1
    const-string v2, "trace_sample_rate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_2
    const-string v2, "profiling_traces_hz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "profile_sampled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "is_profiling_enabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_5
    const-string v2, "profiling_traces_dir_path"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_6
    const-string v2, "trace_sampled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    if-nez v0, :cond_8

    .line 206
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 208
    :cond_8
    invoke-virtual {p1, p2, v0, v1}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 171
    iput-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampleRate:Ljava/lang/Double;

    goto :goto_0

    .line 181
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    iput-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampleRate:Ljava/lang/Double;

    goto/16 :goto_0

    .line 199
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesHz:I

    goto/16 :goto_0

    .line 163
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampled:Z

    goto/16 :goto_0

    .line 193
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->isProfilingEnabled:Z

    goto/16 :goto_0

    .line 187
    :pswitch_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    iput-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesDirPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 175
    :pswitch_6
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampled:Z

    goto/16 :goto_0

    .line 212
    :cond_9
    invoke-virtual {p0, v0}, Lio/sentry/SentryAppStartProfilingOptions;->setUnknown(Ljava/util/Map;)V

    .line 213
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x21c03d00 -> :sswitch_6
        -0x1ad38c31 -> :sswitch_5
        -0x6f7b3ad -> :sswitch_4
        -0x426489c -> :sswitch_3
        0x5e67e24a -> :sswitch_2
        0x62951a5b -> :sswitch_1
        0x7f963cbf -> :sswitch_0
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

    .line 149
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryAppStartProfilingOptions$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryAppStartProfilingOptions;

    move-result-object p0

    return-object p0
.end method
