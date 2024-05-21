.class public final Lio/sentry/util/MapObjectWriter;
.super Ljava/lang/Object;
.source "MapObjectWriter.java"

# interfaces
.implements Lio/sentry/ObjectWriter;


# instance fields
.field final root:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final stack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/util/MapObjectWriter;->root:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/sentry/util/MapObjectWriter;->stack:Ljava/util/ArrayDeque;

    .line 65
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method private peekObject()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/util/MapObjectWriter;->stack:Ljava/util/ArrayDeque;

    .line 249
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 252
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 253
    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 255
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Stack element is not a Map."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 251
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Stack is empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private postValue(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/util/MapObjectWriter;->stack:Ljava/util/ArrayDeque;

    .line 233
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    .line 234
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 236
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    :cond_0
    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/util/MapObjectWriter;->stack:Ljava/util/ArrayDeque;

    .line 240
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    invoke-direct {p0}, Lio/sentry/util/MapObjectWriter;->peekObject()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 243
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid stack state, expected array or string on top"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private serializeCollection(Lio/sentry/ILogger;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 212
    invoke-virtual {p0}, Lio/sentry/util/MapObjectWriter;->beginArray()Lio/sentry/util/MapObjectWriter;

    .line 213
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 214
    invoke-virtual {p0, p1, v0}, Lio/sentry/util/MapObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/util/MapObjectWriter;

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lio/sentry/util/MapObjectWriter;->endArray()Lio/sentry/util/MapObjectWriter;

    return-void
.end method

.method private serializeDate(Lio/sentry/ILogger;Ljava/util/Date;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    :try_start_0
    invoke-static {p2}, Lio/sentry/DateUtils;->getTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/sentry/util/MapObjectWriter;->value(Ljava/lang/String;)Lio/sentry/util/MapObjectWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 195
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error when serializing Date"

    invoke-interface {p1, v0, v1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    invoke-virtual {p0}, Lio/sentry/util/MapObjectWriter;->nullValue()Lio/sentry/util/MapObjectWriter;

    :goto_0
    return-void
.end method

.method private serializeMap(Lio/sentry/ILogger;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 221
    invoke-virtual {p0}, Lio/sentry/util/MapObjectWriter;->beginObject()Lio/sentry/util/MapObjectWriter;

    .line 222
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    .line 223
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 224
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lio/sentry/util/MapObjectWriter;->name(Ljava/lang/String;)Lio/sentry/util/MapObjectWriter;

    .line 225
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lio/sentry/util/MapObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/util/MapObjectWriter;

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lio/sentry/util/MapObjectWriter;->endObject()Lio/sentry/util/MapObjectWriter;

    return-void
.end method

.method private serializeTimeZone(Lio/sentry/ILogger;Ljava/util/TimeZone;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    :try_start_0
    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/sentry/util/MapObjectWriter;->value(Ljava/lang/String;)Lio/sentry/util/MapObjectWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 205
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error when serializing TimeZone"

    invoke-interface {p1, v0, v1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    invoke-virtual {p0}, Lio/sentry/util/MapObjectWriter;->nullValue()Lio/sentry/util/MapObjectWriter;

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic beginArray()Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lio/sentry/util/MapObjectWriter;->beginArray()Lio/sentry/util/MapObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public beginArray()Lio/sentry/util/MapObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/util/MapObjectWriter;->stack:Ljava/util/ArrayDeque;

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic beginObject()Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lio/sentry/util/MapObjectWriter;->beginObject()Lio/sentry/util/MapObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public beginObject()Lio/sentry/util/MapObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/util/MapObjectWriter;->stack:Ljava/util/ArrayDeque;

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic endArray()Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lio/sentry/util/MapObjectWriter;->endArray()Lio/sentry/util/MapObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public endArray()Lio/sentry/util/MapObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lio/sentry/util/MapObjectWriter;->endObject()Lio/sentry/util/MapObjectWriter;

    return-object p0
.end method

.method public bridge synthetic endObject()Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lio/sentry/util/MapObjectWriter;->endObject()Lio/sentry/util/MapObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public endObject()Lio/sentry/util/MapObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/util/MapObjectWriter;->stack:Ljava/util/ArrayDeque;

    .line 143
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    .line 144
    invoke-direct {p0, v0}, Lio/sentry/util/MapObjectWriter;->postValue(Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic name(Ljava/lang/String;)Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/sentry/util/MapObjectWriter;->name(Ljava/lang/String;)Lio/sentry/util/MapObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lio/sentry/util/MapObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/util/MapObjectWriter;->stack:Ljava/util/ArrayDeque;

    .line 70
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic nullValue()Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lio/sentry/util/MapObjectWriter;->nullValue()Lio/sentry/util/MapObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public nullValue()Lio/sentry/util/MapObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, v0}, Lio/sentry/util/MapObjectWriter;->postValue(Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic value(D)Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lio/sentry/util/MapObjectWriter;->value(D)Lio/sentry/util/MapObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic value(J)Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lio/sentry/util/MapObjectWriter;->value(J)Lio/sentry/util/MapObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lio/sentry/util/MapObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/util/MapObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/sentry/util/MapObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/util/MapObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/sentry/util/MapObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/util/MapObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic value(Ljava/lang/String;)Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/sentry/util/MapObjectWriter;->value(Ljava/lang/String;)Lio/sentry/util/MapObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic value(Z)Lio/sentry/ObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/sentry/util/MapObjectWriter;->value(Z)Lio/sentry/util/MapObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public value(D)Lio/sentry/util/MapObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/util/MapObjectWriter;->postValue(Ljava/lang/Object;)V

    return-object p0
.end method

.method public value(J)Lio/sentry/util/MapObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/util/MapObjectWriter;->postValue(Ljava/lang/Object;)V

    return-object p0
.end method

.method public value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/util/MapObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 78
    invoke-virtual {p0}, Lio/sentry/util/MapObjectWriter;->nullValue()Lio/sentry/util/MapObjectWriter;

    goto/16 :goto_0

    .line 79
    :cond_0
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 80
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/util/MapObjectWriter;->value(Ljava/lang/String;)Lio/sentry/util/MapObjectWriter;

    goto/16 :goto_0

    .line 81
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 82
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lio/sentry/util/MapObjectWriter;->value(Ljava/lang/String;)Lio/sentry/util/MapObjectWriter;

    goto/16 :goto_0

    .line 83
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 84
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/sentry/util/MapObjectWriter;->value(Z)Lio/sentry/util/MapObjectWriter;

    goto/16 :goto_0

    .line 85
    :cond_3
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_4

    .line 86
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p2}, Lio/sentry/util/MapObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/util/MapObjectWriter;

    goto/16 :goto_0

    .line 87
    :cond_4
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_5

    .line 88
    check-cast p2, Ljava/util/Date;

    invoke-direct {p0, p1, p2}, Lio/sentry/util/MapObjectWriter;->serializeDate(Lio/sentry/ILogger;Ljava/util/Date;)V

    goto/16 :goto_0

    .line 89
    :cond_5
    instance-of v0, p2, Ljava/util/TimeZone;

    if-eqz v0, :cond_6

    .line 90
    check-cast p2, Ljava/util/TimeZone;

    invoke-direct {p0, p1, p2}, Lio/sentry/util/MapObjectWriter;->serializeTimeZone(Lio/sentry/ILogger;Ljava/util/TimeZone;)V

    goto/16 :goto_0

    .line 91
    :cond_6
    instance-of v0, p2, Lio/sentry/JsonSerializable;

    if-eqz v0, :cond_7

    .line 92
    check-cast p2, Lio/sentry/JsonSerializable;

    invoke-interface {p2, p0, p1}, Lio/sentry/JsonSerializable;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    goto/16 :goto_0

    .line 93
    :cond_7
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_8

    .line 94
    check-cast p2, Ljava/util/Collection;

    invoke-direct {p0, p1, p2}, Lio/sentry/util/MapObjectWriter;->serializeCollection(Lio/sentry/ILogger;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 95
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 96
    check-cast p2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/sentry/util/MapObjectWriter;->serializeCollection(Lio/sentry/ILogger;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 97
    :cond_9
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 98
    check-cast p2, Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lio/sentry/util/MapObjectWriter;->serializeMap(Lio/sentry/ILogger;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 99
    :cond_a
    instance-of v0, p2, Ljava/util/Locale;

    if-eqz v0, :cond_b

    .line 100
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/util/MapObjectWriter;->value(Ljava/lang/String;)Lio/sentry/util/MapObjectWriter;

    goto/16 :goto_0

    .line 101
    :cond_b
    instance-of v0, p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-eqz v0, :cond_c

    .line 102
    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-static {p2}, Lio/sentry/util/JsonSerializationUtils;->atomicIntegerArrayToList(Ljava/util/concurrent/atomic/AtomicIntegerArray;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/sentry/util/MapObjectWriter;->serializeCollection(Lio/sentry/ILogger;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 103
    :cond_c
    instance-of v0, p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_d

    .line 104
    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/sentry/util/MapObjectWriter;->value(Z)Lio/sentry/util/MapObjectWriter;

    goto :goto_0

    .line 105
    :cond_d
    instance-of v0, p2, Ljava/net/URI;

    if-eqz v0, :cond_e

    .line 106
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/util/MapObjectWriter;->value(Ljava/lang/String;)Lio/sentry/util/MapObjectWriter;

    goto :goto_0

    .line 107
    :cond_e
    instance-of v0, p2, Ljava/net/InetAddress;

    if-eqz v0, :cond_f

    .line 108
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/util/MapObjectWriter;->value(Ljava/lang/String;)Lio/sentry/util/MapObjectWriter;

    goto :goto_0

    .line 109
    :cond_f
    instance-of v0, p2, Ljava/util/UUID;

    if-eqz v0, :cond_10

    .line 110
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/util/MapObjectWriter;->value(Ljava/lang/String;)Lio/sentry/util/MapObjectWriter;

    goto :goto_0

    .line 111
    :cond_10
    instance-of v0, p2, Ljava/util/Currency;

    if-eqz v0, :cond_11

    .line 112
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/util/MapObjectWriter;->value(Ljava/lang/String;)Lio/sentry/util/MapObjectWriter;

    goto :goto_0

    .line 113
    :cond_11
    instance-of v0, p2, Ljava/util/Calendar;

    if-eqz v0, :cond_12

    .line 114
    check-cast p2, Ljava/util/Calendar;

    invoke-static {p2}, Lio/sentry/util/JsonSerializationUtils;->calendarToMap(Ljava/util/Calendar;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/sentry/util/MapObjectWriter;->serializeMap(Lio/sentry/ILogger;Ljava/util/Map;)V

    goto :goto_0

    .line 115
    :cond_12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 116
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/util/MapObjectWriter;->value(Ljava/lang/String;)Lio/sentry/util/MapObjectWriter;

    goto :goto_0

    .line 118
    :cond_13
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "Failed serializing unknown object."

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public value(Ljava/lang/Boolean;)Lio/sentry/util/MapObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-direct {p0, p1}, Lio/sentry/util/MapObjectWriter;->postValue(Ljava/lang/Object;)V

    return-object p0
.end method

.method public value(Ljava/lang/Number;)Lio/sentry/util/MapObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1}, Lio/sentry/util/MapObjectWriter;->postValue(Ljava/lang/Object;)V

    return-object p0
.end method

.method public value(Ljava/lang/String;)Lio/sentry/util/MapObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1}, Lio/sentry/util/MapObjectWriter;->postValue(Ljava/lang/Object;)V

    return-object p0
.end method

.method public value(Z)Lio/sentry/util/MapObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/util/MapObjectWriter;->postValue(Ljava/lang/Object;)V

    return-object p0
.end method
