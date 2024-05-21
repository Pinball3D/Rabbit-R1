.class public final Lio/sentry/JsonReflectionObjectSerializer;
.super Ljava/lang/Object;
.source "JsonReflectionObjectSerializer.java"


# instance fields
.field private final maxDepth:I

.field private final visiting:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/sentry/JsonReflectionObjectSerializer;->visiting:Ljava/util/Set;

    iput p1, p0, Lio/sentry/JsonReflectionObjectSerializer;->maxDepth:I

    return-void
.end method

.method private list(Ljava/util/Collection;Lio/sentry/ILogger;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Lio/sentry/ILogger;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 151
    invoke-virtual {p0, v1, p2}, Lio/sentry/JsonReflectionObjectSerializer;->serialize(Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private list([Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Lio/sentry/ILogger;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 142
    invoke-virtual {p0, v3, p2}, Lio/sentry/JsonReflectionObjectSerializer;->serialize(Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private map(Ljava/util/Map;Lio/sentry/ILogger;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lio/sentry/ILogger;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 161
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 163
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, p2}, Lio/sentry/JsonReflectionObjectSerializer;->serialize(Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 45
    :cond_0
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 47
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    return-object p1

    .line 49
    :cond_2
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    return-object p1

    .line 51
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_4

    return-object p1

    .line 53
    :cond_4
    instance-of v1, p1, Ljava/util/Locale;

    if-eqz v1, :cond_5

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 55
    :cond_5
    instance-of v1, p1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-eqz v1, :cond_6

    .line 56
    check-cast p1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-static {p1}, Lio/sentry/util/JsonSerializationUtils;->atomicIntegerArrayToList(Ljava/util/concurrent/atomic/AtomicIntegerArray;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 57
    :cond_6
    instance-of v1, p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_7

    .line 58
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 59
    :cond_7
    instance-of v1, p1, Ljava/net/URI;

    if-eqz v1, :cond_8

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 61
    :cond_8
    instance-of v1, p1, Ljava/net/InetAddress;

    if-eqz v1, :cond_9

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 63
    :cond_9
    instance-of v1, p1, Ljava/util/UUID;

    if-eqz v1, :cond_a

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 65
    :cond_a
    instance-of v1, p1, Ljava/util/Currency;

    if-eqz v1, :cond_b

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :cond_b
    instance-of v1, p1, Ljava/util/Calendar;

    if-eqz v1, :cond_c

    .line 68
    check-cast p1, Ljava/util/Calendar;

    invoke-static {p1}, Lio/sentry/util/JsonSerializationUtils;->calendarToMap(Ljava/util/Calendar;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 69
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    iget-object v1, p0, Lio/sentry/JsonReflectionObjectSerializer;->visiting:Ljava/util/Set;

    .line 72
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 73
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v0, "Cyclic reference detected. Calling toString() on object."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p2, p0, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    iget-object v1, p0, Lio/sentry/JsonReflectionObjectSerializer;->visiting:Ljava/util/Set;

    .line 76
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lio/sentry/JsonReflectionObjectSerializer;->visiting:Ljava/util/Set;

    .line 78
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget v3, p0, Lio/sentry/JsonReflectionObjectSerializer;->maxDepth:I

    if-le v1, v3, :cond_f

    iget-object p0, p0, Lio/sentry/JsonReflectionObjectSerializer;->visiting:Ljava/util/Set;

    .line 79
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 80
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v0, "Max depth exceeded. Calling toString() on object."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p2, p0, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 86
    :cond_f
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 87
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {p0, v1, p2}, Lio/sentry/JsonReflectionObjectSerializer;->list([Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/util/List;

    move-result-object p2

    :goto_0
    move-object v0, p2

    goto :goto_1

    .line 88
    :cond_10
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_11

    .line 89
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p0, v1, p2}, Lio/sentry/JsonReflectionObjectSerializer;->list(Ljava/util/Collection;Lio/sentry/ILogger;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 90
    :cond_11
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_12

    .line 91
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v1, p2}, Lio/sentry/JsonReflectionObjectSerializer;->map(Ljava/util/Map;Lio/sentry/ILogger;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    .line 93
    :cond_12
    invoke-virtual {p0, p1, p2}, Lio/sentry/JsonReflectionObjectSerializer;->serializeObject(Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/util/Map;

    move-result-object v1

    .line 94
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_13
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception v1

    .line 101
    :try_start_1
    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "Not serializing object due to throwing sub-path."

    invoke-interface {p2, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object p0, p0, Lio/sentry/JsonReflectionObjectSerializer;->visiting:Ljava/util/Set;

    .line 103
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v0

    :goto_2
    iget-object p0, p0, Lio/sentry/JsonReflectionObjectSerializer;->visiting:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 104
    throw p2
.end method

.method public serializeObject(Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lio/sentry/ILogger;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 115
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 116
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 124
    :try_start_0
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 125
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 126
    invoke-virtual {p0, v7, p2}, Lio/sentry/JsonReflectionObjectSerializer;->serialize(Ljava/lang/Object;Lio/sentry/ILogger;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 129
    :catch_0
    sget-object v5, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Cannot access field "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-interface {p2, v5, v6, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
