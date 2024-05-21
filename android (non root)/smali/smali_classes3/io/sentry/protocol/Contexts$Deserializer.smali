.class public final Lio/sentry/protocol/Contexts$Deserializer;
.super Ljava/lang/Object;
.source "Contexts.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/Contexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/Contexts;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Contexts;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    new-instance p0, Lio/sentry/protocol/Contexts;

    invoke-direct {p0}, Lio/sentry/protocol/Contexts;-><init>()V

    .line 165
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    .line 166
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v0, v1, :cond_9

    .line 167
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "runtime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_1
    const-string v1, "browser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "trace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_3
    const-string v1, "gpu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_5
    const-string v1, "os"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_6
    const-string v1, "response"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_7
    const-string v1, "device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 195
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {p0, v0, v1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 186
    :pswitch_0
    new-instance v0, Lio/sentry/protocol/SentryRuntime$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SentryRuntime$Deserializer;-><init>()V

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/SentryRuntime$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryRuntime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setRuntime(Lio/sentry/protocol/SentryRuntime;)V

    goto/16 :goto_0

    .line 173
    :pswitch_1
    new-instance v0, Lio/sentry/protocol/Browser$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/Browser$Deserializer;-><init>()V

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/Browser$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Browser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setBrowser(Lio/sentry/protocol/Browser;)V

    goto/16 :goto_0

    .line 189
    :pswitch_2
    new-instance v0, Lio/sentry/SpanContext$Deserializer;

    invoke-direct {v0}, Lio/sentry/SpanContext$Deserializer;-><init>()V

    invoke-virtual {v0, p1, p2}, Lio/sentry/SpanContext$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/SpanContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    goto/16 :goto_0

    .line 179
    :pswitch_3
    new-instance v0, Lio/sentry/protocol/Gpu$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/Gpu$Deserializer;-><init>()V

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/Gpu$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Gpu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setGpu(Lio/sentry/protocol/Gpu;)V

    goto/16 :goto_0

    .line 170
    :pswitch_4
    new-instance v0, Lio/sentry/protocol/App$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/App$Deserializer;-><init>()V

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/App$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/App;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    goto/16 :goto_0

    .line 182
    :pswitch_5
    new-instance v0, Lio/sentry/protocol/OperatingSystem$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/OperatingSystem$Deserializer;-><init>()V

    .line 183
    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/OperatingSystem$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/OperatingSystem;

    move-result-object v0

    .line 182
    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setOperatingSystem(Lio/sentry/protocol/OperatingSystem;)V

    goto/16 :goto_0

    .line 192
    :pswitch_6
    new-instance v0, Lio/sentry/protocol/Response$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/Response$Deserializer;-><init>()V

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/Response$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setResponse(Lio/sentry/protocol/Response;)V

    goto/16 :goto_0

    .line 176
    :pswitch_7
    new-instance v0, Lio/sentry/protocol/Device$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/Device$Deserializer;-><init>()V

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/Device$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Device;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setDevice(Lio/sentry/protocol/Device;)V

    goto/16 :goto_0

    .line 202
    :cond_9
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f94e1aa -> :sswitch_7
        -0x1448ebbf -> :sswitch_6
        0xde4 -> :sswitch_5
        0x17a21 -> :sswitch_4
        0x190ac -> :sswitch_3
        0x697f145 -> :sswitch_2
        0x8ff2b28 -> :sswitch_1
        0x5c71cfd8 -> :sswitch_0
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

    .line 159
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/Contexts$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Contexts;

    move-result-object p0

    return-object p0
.end method
