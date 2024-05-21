.class public final Lio/sentry/SentryLockReason$Deserializer;
.super Ljava/lang/Object;
.source "SentryLockReason.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryLockReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/SentryLockReason;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryLockReason;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    new-instance p0, Lio/sentry/SentryLockReason;

    invoke-direct {p0}, Lio/sentry/SentryLockReason;-><init>()V

    .line 153
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    const/4 v0, 0x0

    .line 154
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_6

    .line 155
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "class_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "address"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "thread_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_4
    const-string v2, "package_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    if-nez v0, :cond_5

    .line 174
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 176
    :cond_5
    invoke-virtual {p1, p2, v0, v1}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextInt()I

    move-result v1

    invoke-static {p0, v1}, Lio/sentry/SentryLockReason;->access$002(Lio/sentry/SentryLockReason;I)I

    goto :goto_0

    .line 167
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/SentryLockReason;->access$302(Lio/sentry/SentryLockReason;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 161
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/SentryLockReason;->access$102(Lio/sentry/SentryLockReason;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 170
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/SentryLockReason;->access$402(Lio/sentry/SentryLockReason;Ljava/lang/Long;)Ljava/lang/Long;

    goto :goto_0

    .line 164
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/sentry/SentryLockReason;->access$202(Lio/sentry/SentryLockReason;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 180
    :cond_6
    invoke-virtual {p0, v0}, Lio/sentry/SentryLockReason;->setUnknown(Ljava/util/Map;)V

    .line 181
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6fe3451c -> :sswitch_4
        -0x5d1dd090 -> :sswitch_3
        -0x4468640c -> :sswitch_2
        -0x11504b0e -> :sswitch_1
        0x368f3a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 146
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryLockReason$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryLockReason;

    move-result-object p0

    return-object p0
.end method
