.class public final Lio/sentry/JsonObjectSerializer;
.super Ljava/lang/Object;
.source "JsonObjectSerializer.java"


# static fields
.field public static final OBJECT_PLACEHOLDER:Ljava/lang/String; = "[OBJECT]"


# instance fields
.field public final jsonReflectionObjectSerializer:Lio/sentry/JsonReflectionObjectSerializer;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lio/sentry/JsonReflectionObjectSerializer;

    invoke-direct {v0, p1}, Lio/sentry/JsonReflectionObjectSerializer;-><init>(I)V

    iput-object v0, p0, Lio/sentry/JsonObjectSerializer;->jsonReflectionObjectSerializer:Lio/sentry/JsonReflectionObjectSerializer;

    return-void
.end method

.method private serializeCollection(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ObjectWriter;",
            "Lio/sentry/ILogger;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginArray()Lio/sentry/ObjectWriter;

    .line 117
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 118
    invoke-virtual {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endArray()Lio/sentry/ObjectWriter;

    return-void
.end method

.method private serializeDate(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    :try_start_0
    invoke-static {p3}, Lio/sentry/DateUtils;->getTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 97
    sget-object p3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Error when serializing Date"

    invoke-interface {p2, p3, v0, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->nullValue()Lio/sentry/ObjectWriter;

    :goto_0
    return-void
.end method

.method private serializeMap(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ObjectWriter;",
            "Lio/sentry/ILogger;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 127
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 128
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 129
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 130
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lio/sentry/JsonObjectSerializer;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method private serializeTimeZone(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/TimeZone;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    :try_start_0
    invoke-virtual {p3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 108
    sget-object p3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Error when serializing TimeZone"

    invoke-interface {p2, p3, v0, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->nullValue()Lio/sentry/ObjectWriter;

    :goto_0
    return-void
.end method


# virtual methods
.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 39
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->nullValue()Lio/sentry/ObjectWriter;

    goto/16 :goto_0

    .line 40
    :cond_0
    instance-of v0, p3, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 41
    check-cast p3, Ljava/lang/Character;

    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    goto/16 :goto_0

    .line 42
    :cond_1
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 43
    check-cast p3, Ljava/lang/String;

    invoke-interface {p1, p3}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    goto/16 :goto_0

    .line 44
    :cond_2
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 45
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Lio/sentry/ObjectWriter;->value(Z)Lio/sentry/ObjectWriter;

    goto/16 :goto_0

    .line 46
    :cond_3
    instance-of v0, p3, Ljava/lang/Number;

    if-eqz v0, :cond_4

    .line 47
    check-cast p3, Ljava/lang/Number;

    invoke-interface {p1, p3}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    goto/16 :goto_0

    .line 48
    :cond_4
    instance-of v0, p3, Ljava/util/Date;

    if-eqz v0, :cond_5

    .line 49
    check-cast p3, Ljava/util/Date;

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/JsonObjectSerializer;->serializeDate(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Date;)V

    goto/16 :goto_0

    .line 50
    :cond_5
    instance-of v0, p3, Ljava/util/TimeZone;

    if-eqz v0, :cond_6

    .line 51
    check-cast p3, Ljava/util/TimeZone;

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/JsonObjectSerializer;->serializeTimeZone(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/TimeZone;)V

    goto/16 :goto_0

    .line 52
    :cond_6
    instance-of v0, p3, Lio/sentry/JsonSerializable;

    if-eqz v0, :cond_7

    .line 53
    check-cast p3, Lio/sentry/JsonSerializable;

    invoke-interface {p3, p1, p2}, Lio/sentry/JsonSerializable;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    goto/16 :goto_0

    .line 54
    :cond_7
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_8

    .line 55
    check-cast p3, Ljava/util/Collection;

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/JsonObjectSerializer;->serializeCollection(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 56
    :cond_8
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 57
    check-cast p3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/JsonObjectSerializer;->serializeCollection(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 58
    :cond_9
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 59
    check-cast p3, Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/JsonObjectSerializer;->serializeMap(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 60
    :cond_a
    instance-of v0, p3, Ljava/util/Locale;

    if-eqz v0, :cond_b

    .line 61
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    goto/16 :goto_0

    .line 62
    :cond_b
    instance-of v0, p3, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-eqz v0, :cond_c

    .line 63
    check-cast p3, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-static {p3}, Lio/sentry/util/JsonSerializationUtils;->atomicIntegerArrayToList(Ljava/util/concurrent/atomic/AtomicIntegerArray;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/JsonObjectSerializer;->serializeCollection(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 64
    :cond_c
    instance-of v0, p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_d

    .line 65
    check-cast p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-interface {p1, p0}, Lio/sentry/ObjectWriter;->value(Z)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 66
    :cond_d
    instance-of v0, p3, Ljava/net/URI;

    if-eqz v0, :cond_e

    .line 67
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 68
    :cond_e
    instance-of v0, p3, Ljava/net/InetAddress;

    if-eqz v0, :cond_f

    .line 69
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 70
    :cond_f
    instance-of v0, p3, Ljava/util/UUID;

    if-eqz v0, :cond_10

    .line 71
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 72
    :cond_10
    instance-of v0, p3, Ljava/util/Currency;

    if-eqz v0, :cond_11

    .line 73
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 74
    :cond_11
    instance-of v0, p3, Ljava/util/Calendar;

    if-eqz v0, :cond_12

    .line 75
    check-cast p3, Ljava/util/Calendar;

    invoke-static {p3}, Lio/sentry/util/JsonSerializationUtils;->calendarToMap(Ljava/util/Calendar;)Ljava/util/Map;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/JsonObjectSerializer;->serializeMap(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/util/Map;)V

    goto :goto_0

    .line 76
    :cond_12
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 77
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    goto :goto_0

    :cond_13
    :try_start_0
    iget-object v0, p0, Lio/sentry/JsonObjectSerializer;->jsonReflectionObjectSerializer:Lio/sentry/JsonReflectionObjectSerializer;

    .line 80
    invoke-virtual {v0, p3, p2}, Lio/sentry/JsonReflectionObjectSerializer;->serialize(Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/lang/Object;

    move-result-object p3

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/JsonObjectSerializer;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 83
    sget-object p3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Failed serializing unknown object."

    invoke-interface {p2, p3, v0, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "[OBJECT]"

    .line 84
    invoke-interface {p1, p0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :goto_0
    return-void
.end method
