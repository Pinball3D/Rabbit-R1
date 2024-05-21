.class public final Lio/sentry/Breadcrumb;
.super Ljava/lang/Object;
.source "Breadcrumb.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/Breadcrumb$JsonKeys;,
        Lio/sentry/Breadcrumb$Deserializer;
    }
.end annotation


# instance fields
.field private category:Ljava/lang/String;

.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private level:Lio/sentry/SentryLevel;

.field private message:Ljava/lang/String;

.field private final timestamp:Ljava/util/Date;

.field private type:Ljava/lang/String;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 496
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/Breadcrumb;-><init>(Ljava/util/Date;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/Breadcrumb;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    .line 53
    iget-object v0, p1, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    .line 54
    iget-object v0, p1, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    .line 61
    :cond_0
    iget-object v0, p1, Lio/sentry/Breadcrumb;->unknown:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Breadcrumb;->unknown:Ljava/util/Map;

    .line 62
    iget-object p1, p1, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    iput-object p1, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 505
    invoke-direct {p0}, Lio/sentry/Breadcrumb;-><init>()V

    iput-object p1, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    iput-object p1, p0, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    return-void
.end method

.method static synthetic access$002(Lio/sentry/Breadcrumb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/Breadcrumb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/Breadcrumb;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/Breadcrumb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/Breadcrumb;Lio/sentry/SentryLevel;)Lio/sentry/SentryLevel;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    return-object p1
.end method

.method public static debug(Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 340
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v1, "debug"

    .line 341
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    .line 343
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    return-object v0
.end method

.method public static error(Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 354
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v1, "error"

    .line 355
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    .line 357
    sget-object p0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    return-object v0
.end method

.method public static fromMap(Ljava/util/Map;Lio/sentry/SentryOptions;)Lio/sentry/Breadcrumb;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/sentry/SentryOptions;",
            ")",
            "Lio/sentry/Breadcrumb;"
        }
    .end annotation

    .line 76
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 84
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 86
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, -0x1

    sparse-switch v11, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v11, "message"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v13, 0x5

    goto :goto_1

    :sswitch_1
    const-string v11, "level"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v13, 0x4

    goto :goto_1

    :sswitch_2
    const-string v11, "timestamp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    const/4 v13, 0x3

    goto :goto_1

    :sswitch_3
    const-string v11, "category"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    const/4 v13, 0x2

    goto :goto_1

    :sswitch_4
    const-string v11, "type"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    const/4 v13, 0x1

    goto :goto_1

    :sswitch_5
    const-string v11, "data"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_1

    :cond_6
    move v13, v12

    :goto_1
    packed-switch v13, :pswitch_data_0

    if-nez v7, :cond_7

    .line 132
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 134
    :cond_7
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    :pswitch_0
    instance-of v3, v9, Ljava/lang/String;

    if-eqz v3, :cond_8

    check-cast v9, Ljava/lang/String;

    move-object v3, v9

    goto/16 :goto_0

    :cond_8
    move-object v3, v2

    goto/16 :goto_0

    .line 121
    :pswitch_1
    instance-of v8, v9, Ljava/lang/String;

    if-eqz v8, :cond_9

    check-cast v9, Ljava/lang/String;

    goto :goto_2

    :cond_9
    move-object v9, v2

    :goto_2
    if-eqz v9, :cond_0

    .line 124
    :try_start_0
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lio/sentry/SentryLevel;->valueOf(Ljava/lang/String;)Lio/sentry/SentryLevel;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 88
    :pswitch_2
    instance-of v8, v9, Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 89
    check-cast v9, Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v8

    invoke-static {v9, v8}, Lio/sentry/JsonObjectReader;->dateOrNull(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v8

    if-eqz v8, :cond_0

    move-object v0, v8

    goto/16 :goto_0

    .line 118
    :pswitch_3
    instance-of v5, v9, Ljava/lang/String;

    if-eqz v5, :cond_a

    check-cast v9, Ljava/lang/String;

    move-object v5, v9

    goto/16 :goto_0

    :cond_a
    move-object v5, v2

    goto/16 :goto_0

    .line 100
    :pswitch_4
    instance-of v4, v9, Ljava/lang/String;

    if-eqz v4, :cond_b

    check-cast v9, Ljava/lang/String;

    move-object v4, v9

    goto/16 :goto_0

    :cond_b
    move-object v4, v2

    goto/16 :goto_0

    .line 104
    :pswitch_5
    instance-of v8, v9, Ljava/util/Map;

    if-eqz v8, :cond_c

    check-cast v9, Ljava/util/Map;

    goto :goto_3

    :cond_c
    move-object v9, v2

    :goto_3
    if-eqz v9, :cond_0

    .line 106
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Ljava/lang/String;

    if-eqz v10, :cond_d

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 108
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 111
    :cond_d
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v9

    sget-object v10, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v11, "Invalid key or null value in data map."

    new-array v13, v12, [Ljava/lang/Object;

    .line 112
    invoke-interface {v9, v10, v11, v13}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 139
    :cond_e
    new-instance p0, Lio/sentry/Breadcrumb;

    invoke-direct {p0, v0}, Lio/sentry/Breadcrumb;-><init>(Ljava/util/Date;)V

    iput-object v3, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    iput-object v4, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    iput-object v1, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    iput-object v5, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    iput-object v6, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    .line 146
    invoke-virtual {p0, v7}, Lio/sentry/Breadcrumb;->setUnknown(Ljava/util/Map;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2eefaa -> :sswitch_5
        0x368f3a -> :sswitch_4
        0x302bcfe -> :sswitch_3
        0x3492916 -> :sswitch_2
        0x6219b84 -> :sswitch_1
        0x38eb0007 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static graphqlDataFetcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 239
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v1, "graphql"

    .line 241
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    const-string v1, "graphql.fetcher"

    .line 242
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string v1, "path"

    .line 245
    invoke-virtual {v0, v1, p0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "field"

    .line 248
    invoke-virtual {v0, p0, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "type"

    .line 251
    invoke-virtual {v0, p0, p2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    if-eqz p3, :cond_3

    const-string p0, "object_type"

    .line 254
    invoke-virtual {v0, p0, p3}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method public static graphqlDataLoader(Ljava/lang/Iterable;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/sentry/Breadcrumb;"
        }
    .end annotation

    .line 274
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v1, "graphql"

    .line 276
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    const-string v1, "graphql.data_loader"

    .line 277
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 280
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 281
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "keys"

    .line 283
    invoke-virtual {v0, p0, v1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    const-string p0, "key_type"

    .line 286
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "value_type"

    .line 290
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    if-eqz p3, :cond_3

    const-string p0, "name"

    .line 294
    invoke-virtual {v0, p0, p3}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method public static graphqlOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 205
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v1, "graphql"

    .line 207
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string v1, "operation_name"

    .line 210
    invoke-virtual {v0, v1, p0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "operation_type"

    .line 213
    invoke-virtual {v0, p0, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "graphql.operation"

    .line 216
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_2

    const-string p0, "operation_id"

    .line 219
    invoke-virtual {v0, p0, p2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public static http(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 3

    .line 158
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 159
    invoke-static {p0}, Lio/sentry/util/UrlUtils;->parse(Ljava/lang/String;)Lio/sentry/util/UrlUtils$UrlDetails;

    move-result-object p0

    const-string v1, "http"

    .line 160
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lio/sentry/util/UrlUtils$UrlDetails;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "url"

    .line 163
    invoke-virtual {p0}, Lio/sentry/util/UrlUtils$UrlDetails;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p0}, Lio/sentry/util/UrlUtils$UrlDetails;->getQuery()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "http.query"

    .line 167
    invoke-virtual {p0}, Lio/sentry/util/UrlUtils$UrlDetails;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    :cond_1
    invoke-virtual {p0}, Lio/sentry/util/UrlUtils$UrlDetails;->getFragment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p1, "http.fragment"

    .line 170
    invoke-virtual {p0}, Lio/sentry/util/UrlUtils$UrlDetails;->getFragment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public static http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lio/sentry/Breadcrumb;
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lio/sentry/Breadcrumb;->http(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;

    move-result-object p0

    if-eqz p2, :cond_0

    const-string p1, "status_code"

    .line 188
    invoke-virtual {p0, p1, p2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public static info(Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 369
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v1, "info"

    .line 370
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    .line 372
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    return-object v0
.end method

.method public static navigation(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 310
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v1, "navigation"

    .line 311
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    const-string v1, "from"

    .line 313
    invoke-virtual {v0, v1, p0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "to"

    .line 314
    invoke-virtual {v0, p0, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static query(Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 383
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v1, "query"

    .line 384
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    return-object v0
.end method

.method public static transaction(Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 325
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v1, "default"

    .line 326
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    const-string v1, "sentry.transaction"

    .line 327
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    return-object v0
.end method

.method public static ui(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 3

    .line 398
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v1, "default"

    .line 399
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ui."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    return-object v0
.end method

.method public static user(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 413
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v1, "user"

    .line 414
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    return-object v0
.end method

.method public static userInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 1

    .line 434
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lio/sentry/Breadcrumb;->userInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/Breadcrumb;

    move-result-object p0

    return-object p0
.end method

.method public static userInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/Breadcrumb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/sentry/Breadcrumb;"
        }
    .end annotation

    .line 455
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v1, "user"

    .line 456
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ui."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p0, "view.id"

    .line 459
    invoke-virtual {v0, p0, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, "view.class"

    .line 462
    invoke-virtual {v0, p0, p2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string p0, "view.tag"

    .line 465
    invoke-virtual {v0, p0, p3}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    :cond_2
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 468
    invoke-virtual {v0}, Lio/sentry/Breadcrumb;->getData()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 470
    :cond_3
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    return-object v0
.end method

.method public static userInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/Breadcrumb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/sentry/Breadcrumb;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 491
    invoke-static {p0, p1, p2, v0, p3}, Lio/sentry/Breadcrumb;->userInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/Breadcrumb;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 636
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 637
    :cond_1
    check-cast p1, Lio/sentry/Breadcrumb;

    iget-object v2, p0, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    .line 638
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p1, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    .line 639
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    .line 640
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    .line 641
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    iget-object p1, p1, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCategory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    return-object p0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    .line 574
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getData()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    return-object p0
.end method

.method public getLevel()Lio/sentry/SentryLevel;
    .locals 0

    iget-object p0, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    .line 516
    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/Breadcrumb;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    iget-object v1, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    iget-object v3, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    iget-object p0, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    .line 647
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public removeData(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    .line 593
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    const-string v0, "timestamp"

    .line 676
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "message"

    .line 678
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_0
    iget-object v0, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "type"

    .line 681
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_1
    const-string v0, "data"

    .line 683
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "category"

    .line 685
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_2
    iget-object v0, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    if-eqz v0, :cond_3

    const-string v0, "level"

    .line 688
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_3
    iget-object v0, p0, Lio/sentry/Breadcrumb;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 691
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/Breadcrumb;->unknown:Ljava/util/Map;

    .line 692
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 693
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 694
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 697
    :cond_4
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    .line 584
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/Breadcrumb;->unknown:Ljava/util/Map;

    return-void
.end method
