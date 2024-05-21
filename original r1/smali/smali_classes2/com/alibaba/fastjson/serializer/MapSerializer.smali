.class public final Lcom/alibaba/fastjson/serializer/MapSerializer;
.super Ljava/lang/Object;
.source "MapSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object p0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 42
    :cond_0
    move-object p4, p2

    check-cast p4, Ljava/util/Map;

    .line 43
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 44
    const-class v1, Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const-class v1, Ljava/util/HashMap;

    if-eq v0, v1, :cond_1

    const-class v1, Ljava/util/LinkedHashMap;

    if-ne v0, v1, :cond_2

    :cond_1
    const-string v0, "@type"

    .line 45
    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    .line 47
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_4

    .line 48
    instance-of v1, p4, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_3

    .line 49
    check-cast p4, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p4}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object p4

    .line 51
    :cond_3
    instance-of v1, p4, Ljava/util/SortedMap;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/util/LinkedHashMap;

    if-nez v1, :cond_4

    .line 53
    :try_start_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, p4}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p4, v1

    .line 60
    :catch_0
    :cond_4
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 61
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    return-void

    .line 65
    :cond_5
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 66
    invoke-virtual {p1, v1, p2, p3, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p3, 0x7b

    .line 68
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 70
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 77
    iget p3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p3, v4

    if-eqz p3, :cond_6

    if-nez v0, :cond_6

    .line 79
    iget-object p3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object p3, p3, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    invoke-virtual {p0, p3, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 80
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    move p3, v3

    goto :goto_1

    :cond_6
    move p3, v2

    .line 85
    :goto_1
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 88
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 90
    invoke-virtual {p1, p2, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->applyName(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_2

    .line 94
    :cond_7
    invoke-virtual {p1, p2, v7, v8}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_2

    .line 98
    :cond_8
    invoke-virtual {p1, p2, v7, v8}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->processKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 99
    invoke-static {p1, p2, v7, v8}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_9

    .line 102
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v10, v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v9, v10

    if-nez v9, :cond_9

    goto :goto_2

    .line 107
    :cond_9
    instance-of v9, v7, Ljava/lang/String;

    const/16 v10, 0x2c

    if-eqz v9, :cond_c

    .line 108
    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    if-nez p3, :cond_a

    .line 111
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 114
    :cond_a
    iget p3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v10, v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p3, v10

    if-eqz p3, :cond_b

    .line 115
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 117
    :cond_b
    invoke-virtual {p0, v9, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_c
    if-nez p3, :cond_d

    .line 120
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 123
    :cond_d
    iget p3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v9, v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p3, v9

    if-eqz p3, :cond_e

    instance-of p3, v7, Ljava/lang/Enum;

    if-nez p3, :cond_e

    .line 124
    invoke-static {v7}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 125
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 127
    :cond_e
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    :goto_3
    const/16 p3, 0x3a

    .line 130
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_4
    if-nez v8, :cond_f

    .line 136
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_5
    move p3, v3

    goto :goto_2

    .line 140
    :cond_f
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    if-ne p3, v5, :cond_10

    .line 143
    invoke-interface {v6, p1, v8, v7, v4}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_5

    .line 146
    :cond_10
    iget-object v5, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v5, p3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v5

    .line 148
    invoke-interface {v5, p1, v8, v7, v4}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    move-object v5, p3

    goto :goto_5

    .line 152
    :cond_11
    iput-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 155
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 156
    iget p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object p3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p3, p3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_12

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_12

    .line 157
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    :cond_12
    const/16 p1, 0x7d

    .line 159
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 152
    iput-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 153
    throw p0
.end method
