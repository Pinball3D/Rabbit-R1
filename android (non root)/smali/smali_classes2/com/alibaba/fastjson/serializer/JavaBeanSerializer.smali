.class public Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
.super Ljava/lang/Object;
.source "JavaBeanSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field private static final false_chars:[C

.field private static final true_chars:[C


# instance fields
.field protected features:I

.field private final getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field private final sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field protected final typeKey:Ljava/lang/String;

.field protected final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->true_chars:[C

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->false_chars:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x74s
        0x72s
        0x75s
        0x65s
    .end array-data

    :array_1
    .array-data 2
        0x66s
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/PropertyNamingStrategy;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    const/4 v2, 0x0

    if-eqz p5, :cond_0

    .line 86
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v13, p1

    .line 87
    invoke-virtual {v13, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONType;

    goto :goto_0

    :cond_0
    move-object/from16 v13, p1

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_9

    .line 92
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v4

    iput v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    .line 94
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    move-object v4, v2

    move-object v6, v4

    goto :goto_5

    .line 98
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    move-object v6, v2

    :goto_1
    if-eqz v5, :cond_4

    .line 99
    const-class v7, Ljava/lang/Object;

    if-eq v5, v7, :cond_4

    .line 101
    const-class v7, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v7, :cond_2

    goto :goto_2

    .line 106
    :cond_2
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v6

    .line 107
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_1

    .line 112
    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    array-length v7, v5

    move v8, v1

    :goto_3
    if-ge v8, v7, :cond_6

    aget-object v9, v5, v8

    .line 113
    const-class v10, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v9, :cond_5

    .line 115
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-eqz v6, :cond_7

    .line 121
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    move-object v6, v2

    :cond_7
    :goto_5
    if-nez p8, :cond_8

    .line 127
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v5

    .line 128
    sget-object v7, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-eq v5, v7, :cond_8

    move-object v14, v5

    goto :goto_6

    :cond_8
    move-object/from16 v14, p8

    goto :goto_6

    :cond_9
    move-object/from16 v14, p8

    move-object v4, v2

    move-object v6, v4

    :goto_6
    iput-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeName:Ljava/lang/String;

    iput-object v6, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeKey:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    move-object v7, v3

    move-object/from16 v8, p3

    move/from16 v10, p6

    move/from16 v11, p7

    move-object v12, v14

    .line 137
    invoke-static/range {v4 .. v12}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;IZLcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;ZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v4

    .line 146
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 149
    new-instance v7, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-direct {v7, v6}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 151
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 154
    :cond_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    if-eqz v3, :cond_b

    .line 160
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v2

    :cond_b
    if-eqz v2, :cond_d

    .line 163
    array-length v2, v2

    if-eqz v2, :cond_d

    const/4 v9, 0x1

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    move-object v7, v3

    move-object/from16 v8, p3

    move/from16 v10, p6

    move/from16 v11, p7

    move-object v12, v14

    .line 164
    invoke-static/range {v4 .. v12}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;IZLcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;ZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v1

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 175
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 176
    new-instance v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-direct {v4, v3}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 177
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 180
    :cond_c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_9

    .line 182
    :cond_d
    array-length v2, v4

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 183
    array-length v3, v4

    invoke-static {v4, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 186
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iput-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_9

    :cond_e
    iput-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    :goto_9
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    const/4 v3, 0x0

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->map([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V

    return-void
.end method

.method private static varargs map([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 61
    invoke-interface {v0, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
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

    .line 700
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 702
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 703
    iget-object v4, v3, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 195
    iget-object v6, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez v3, :cond_0

    .line 198
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 202
    :cond_0
    iget-object v7, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerialContext;->features:I

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v8, v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v7, v8

    if-nez v7, :cond_2

    :cond_1
    iget-object v7, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-eqz v7, :cond_2

    iget-object v7, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    .line 205
    invoke-virtual {v7, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 206
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    return-void

    .line 212
    :cond_2
    iget v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v8, v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    iget-object v7, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_0

    :cond_3
    iget-object v7, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 218
    :goto_0
    iget-object v8, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 220
    iget v9, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v10, v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v9, v10

    if-nez v9, :cond_5

    .line 221
    new-instance v9, Lcom/alibaba/fastjson/serializer/SerialContext;

    iget v10, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    invoke-direct {v9, v8, v3, v4, v10}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v9, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 222
    iget-object v9, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-nez v9, :cond_4

    .line 223
    new-instance v9, Ljava/util/IdentityHashMap;

    invoke-direct {v9}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v9, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    .line 225
    :cond_4
    iget-object v9, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    iget-object v10, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    invoke-virtual {v9, v3, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget v9, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    .line 230
    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v10, v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_7

    iget v9, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v12, v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    goto :goto_1

    :cond_6
    move v9, v10

    goto :goto_2

    :cond_7
    :goto_1
    move v9, v11

    :goto_2
    if-eqz v9, :cond_8

    const/16 v12, 0x5b

    goto :goto_3

    :cond_8
    const/16 v12, 0x7b

    :goto_3
    if-eqz v9, :cond_9

    const/16 v13, 0x5d

    goto :goto_4

    :cond_9
    const/16 v13, 0x7d

    .line 238
    :goto_4
    :try_start_0
    iget v14, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v14, v11

    .line 239
    iget-object v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v15, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-le v14, v15, :cond_b

    .line 240
    :try_start_1
    iget-object v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v15, :cond_a

    .line 241
    invoke-virtual {v6, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_5

    .line 243
    :cond_a
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v14, v11

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v1, v8

    goto/16 :goto_33

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v1, v8

    goto/16 :goto_32

    .line 247
    :cond_b
    :goto_5
    :try_start_2
    iget-object v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v11, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v12, v15, v11

    .line 248
    iput v14, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 251
    array-length v11, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-lez v11, :cond_c

    :try_start_3
    iget v11, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v12, v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_c

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_c
    :try_start_4
    iget v11, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    .line 260
    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v12, v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    and-int/2addr v11, v12

    const/16 v12, 0x2c

    if-nez v11, :cond_d

    :try_start_5
    iget v11, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v14, v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v11, v14

    if-eqz v11, :cond_10

    if-nez v5, :cond_d

    iget v11, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v14, v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v11, v14

    if-eqz v11, :cond_d

    iget-object v11, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-eqz v11, :cond_10

    iget-object v11, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    iget-object v11, v11, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v11, :cond_10

    .line 267
    :cond_d
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eq v11, v5, :cond_10

    :try_start_7
    iget-object v5, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeKey:Ljava/lang/String;

    if-eqz v5, :cond_e

    goto :goto_6

    .line 269
    :cond_e
    iget-object v5, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v5, v5, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    :goto_6
    invoke-virtual {v6, v5, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    iget-object v5, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeName:Ljava/lang/String;

    if-nez v5, :cond_f

    .line 272
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 274
    :cond_f
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v5, v12

    goto :goto_7

    :cond_10
    move v5, v10

    .line 282
    :goto_7
    :try_start_8
    iget-object v11, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v11, :cond_11

    .line 283
    :try_start_9
    iget-object v11, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 284
    invoke-virtual {v14, v2, v3, v5}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    :cond_11
    if-ne v5, v12, :cond_12

    const/4 v5, 0x1

    goto :goto_9

    :cond_12
    move v5, v10

    .line 289
    :goto_9
    :try_start_a
    iget v11, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v14, v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    and-int/2addr v11, v14

    if-eqz v11, :cond_13

    :try_start_b
    iget v11, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v14, v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    and-int/2addr v11, v14

    if-nez v11, :cond_13

    const/4 v11, 0x1

    goto :goto_a

    :cond_13
    move v11, v10

    .line 291
    :goto_a
    :try_start_c
    iget v14, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v15, v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v14, v15

    if-eqz v14, :cond_14

    const/4 v14, 0x1

    goto :goto_b

    :cond_14
    move v14, v10

    .line 292
    :goto_b
    iget v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v12, v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v12, v15

    if-eqz v12, :cond_15

    const/4 v12, 0x1

    goto :goto_c

    :cond_15
    move v12, v10

    .line 294
    :goto_c
    iget-object v15, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    .line 295
    iget-object v10, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    move/from16 p4, v5

    .line 296
    iget-object v5, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    .line 297
    iget-object v4, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move/from16 v17, p4

    move-object/from16 v18, v8

    move/from16 v19, v13

    const/4 v8, 0x0

    .line 299
    :goto_d
    :try_start_d
    array-length v13, v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-ge v8, v13, :cond_64

    .line 300
    :try_start_e
    aget-object v13, v7, v8

    move-object/from16 v20, v7

    .line 301
    iget-object v7, v13, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move/from16 p4, v8

    .line 302
    iget-object v8, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move/from16 v21, v14

    .line 303
    iget-object v14, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move/from16 v22, v11

    .line 304
    iget v11, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v23, v12

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v12, v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_16

    .line 305
    iget-object v11, v7, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v11, :cond_16

    .line 307
    iget-boolean v11, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    if-eqz v11, :cond_16

    goto :goto_e

    :cond_16
    iget-object v11, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeKey:Ljava/lang/String;

    if-eqz v11, :cond_17

    .line 313
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    goto :goto_e

    :cond_17
    if-eqz v4, :cond_19

    .line 320
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_18
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    .line 321
    invoke-interface {v12, v2, v3, v14}, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_18

    :goto_e
    move-object/from16 v29, v4

    :goto_f
    move-object/from16 v31, v5

    move-object/from16 v30, v10

    move-object/from16 v33, v15

    goto/16 :goto_1f

    .line 339
    :cond_19
    iget-boolean v11, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    const-wide/16 v24, 0x0

    if-eqz v11, :cond_1d

    .line 340
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    if-ne v8, v11, :cond_1a

    .line 341
    iget-object v11, v7, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v11, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    move-wide/from16 v27, v24

    const/16 v24, 0x0

    const/16 v26, 0x0

    move/from16 v25, v11

    const/4 v11, 0x1

    goto :goto_12

    .line 343
    :cond_1a
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v11, :cond_1b

    .line 344
    iget-object v11, v7, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v11, v3}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v24

    move-wide/from16 v27, v24

    const/4 v11, 0x1

    const/16 v24, 0x0

    goto :goto_11

    .line 346
    :cond_1b
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v11, :cond_1c

    .line 347
    iget-object v11, v7, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v11, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v11

    move/from16 v26, v11

    move-wide/from16 v27, v24

    const/4 v11, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    goto :goto_12

    .line 350
    :cond_1c
    iget-object v11, v7, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v11, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_10

    .line 354
    :cond_1d
    invoke-virtual {v13, v3}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    :goto_10
    move-wide/from16 v27, v24

    const/4 v11, 0x0

    const/16 v24, 0x1

    :goto_11
    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_12
    if-eqz v15, :cond_23

    if-eqz v11, :cond_20

    move-object/from16 v29, v4

    .line 362
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_1e

    .line 363
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_13
    const/16 v24, 0x1

    goto :goto_14

    .line 365
    :cond_1e
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_1f

    .line 366
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_13

    .line 368
    :cond_1f
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_21

    .line 369
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    goto :goto_13

    :cond_20
    move-object/from16 v29, v4

    .line 374
    :cond_21
    :goto_14
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v31, v4

    move-object/from16 v4, v30

    check-cast v4, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 375
    invoke-interface {v4, v3, v14, v12}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    const/4 v4, 0x0

    goto :goto_16

    :cond_22
    move-object/from16 v4, v31

    goto :goto_15

    :cond_23
    move-object/from16 v29, v4

    :cond_24
    const/4 v4, 0x1

    :goto_16
    if-nez v4, :cond_25

    goto/16 :goto_f

    :cond_25
    if-eqz v10, :cond_29

    if-eqz v11, :cond_28

    if-nez v24, :cond_28

    .line 391
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_26

    .line 392
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_17
    move-object v12, v4

    const/16 v24, 0x1

    goto :goto_18

    .line 394
    :cond_26
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_27

    .line 395
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_17

    .line 397
    :cond_27
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_28

    .line 398
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_17

    .line 403
    :cond_28
    :goto_18
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v30, v10

    move-object v10, v14

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v32, v4

    move-object/from16 v4, v31

    check-cast v4, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 404
    invoke-interface {v4, v3, v10, v12}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v4, v32

    goto :goto_19

    :cond_29
    move-object/from16 v30, v10

    move-object v10, v14

    :cond_2a
    if-eqz v5, :cond_2f

    if-eqz v11, :cond_2d

    if-nez v24, :cond_2d

    .line 413
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_2b

    .line 414
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_1a
    const/16 v24, 0x1

    goto :goto_1b

    .line 417
    :cond_2b
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_2c

    .line 418
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_1a

    .line 421
    :cond_2c
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_2d

    .line 422
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    goto :goto_1a

    .line 428
    :cond_2d
    :goto_1b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v31, v5

    move-object v5, v12

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_2e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v33, v4

    move-object/from16 v4, v32

    check-cast v4, Lcom/alibaba/fastjson/serializer/ValueFilter;

    .line 429
    invoke-interface {v4, v3, v14, v5}, Lcom/alibaba/fastjson/serializer/ValueFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-object/from16 v4, v33

    goto :goto_1c

    :cond_2e
    move-object v4, v12

    move-object v12, v5

    goto :goto_1d

    :cond_2f
    move-object/from16 v31, v5

    move-object v4, v12

    :goto_1d
    const-string v5, ""

    if-eqz v24, :cond_3d

    if-nez v12, :cond_3d

    move-object/from16 v32, v12

    .line 435
    :try_start_f
    iget v12, v7, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    move-object/from16 v33, v15

    iget v15, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    or-int/2addr v12, v15

    iget v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    or-int/2addr v12, v15

    .line 437
    const-class v15, Ljava/lang/Boolean;

    if-ne v8, v15, :cond_33

    .line 438
    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v15, v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 439
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v3, v15

    if-nez v9, :cond_30

    and-int v34, v12, v3

    if-nez v34, :cond_30

    move-object/from16 v34, v7

    .line 440
    iget v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v3, v7

    if-nez v3, :cond_31

    goto/16 :goto_1f

    :cond_30
    move-object/from16 v34, v7

    :cond_31
    and-int v3, v12, v15

    if-nez v3, :cond_32

    .line 442
    iget v3, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v3, v15

    if-eqz v3, :cond_3e

    :cond_32
    const/4 v3, 0x0

    .line 443
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    goto/16 :goto_1e

    :cond_33
    move-object/from16 v34, v7

    .line 445
    const-class v3, Ljava/lang/String;

    if-ne v8, v3, :cond_36

    .line 446
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 447
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v7, v3

    if-nez v9, :cond_34

    and-int v15, v12, v7

    if-nez v15, :cond_34

    .line 448
    iget v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v7, v15

    if-nez v7, :cond_34

    goto/16 :goto_1f

    :cond_34
    and-int v7, v12, v3

    if-nez v7, :cond_35

    .line 450
    iget v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v3, v7

    if-eqz v3, :cond_3e

    :cond_35
    move-object v12, v5

    goto/16 :goto_1e

    .line 453
    :cond_36
    const-class v3, Ljava/lang/Number;

    invoke-virtual {v3, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 454
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 455
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v7, v3

    if-nez v9, :cond_37

    and-int v15, v12, v7

    if-nez v15, :cond_37

    .line 456
    iget v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v7, v15

    if-nez v7, :cond_37

    goto/16 :goto_1f

    :cond_37
    and-int v7, v12, v3

    if-nez v7, :cond_38

    .line 458
    iget v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v3, v7

    if-eqz v3, :cond_3e

    :cond_38
    const/4 v3, 0x0

    .line 459
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_1e

    .line 461
    :cond_39
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 462
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 463
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v7, v3

    if-nez v9, :cond_3a

    and-int v15, v12, v7

    if-nez v15, :cond_3a

    .line 464
    iget v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v7, v15

    if-nez v7, :cond_3a

    goto/16 :goto_1f

    :cond_3a
    and-int v7, v12, v3

    if-nez v7, :cond_3b

    .line 466
    iget v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v3, v7

    if-eqz v3, :cond_3e

    .line 467
    :cond_3b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object v12, v3

    goto :goto_1e

    :cond_3c
    if-nez v9, :cond_3e

    .line 469
    iget-boolean v3, v13, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeNull:Z

    if-nez v3, :cond_3e

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-nez v3, :cond_3e

    goto :goto_1f

    :cond_3d
    move-object/from16 v34, v7

    move-object/from16 v32, v12

    move-object/from16 v33, v15

    :cond_3e
    move-object/from16 v12, v32

    :goto_1e
    if-eqz v24, :cond_41

    if-eqz v12, :cond_41

    if-eqz v23, :cond_41

    .line 475
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v8, v3, :cond_3f

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v8, v3, :cond_3f

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v8, v3, :cond_3f

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v8, v3, :cond_3f

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v8, v3, :cond_3f

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v8, v3, :cond_40

    :cond_3f
    instance-of v3, v12, Ljava/lang/Number;

    if-eqz v3, :cond_40

    move-object v3, v12

    check-cast v3, Ljava/lang/Number;

    .line 483
    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    if-nez v3, :cond_40

    goto :goto_1f

    .line 485
    :cond_40
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v3, :cond_41

    instance-of v3, v12, Ljava/lang/Boolean;

    if-eqz v3, :cond_41

    move-object v3, v12

    check-cast v3, Ljava/lang/Boolean;

    .line 487
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_41

    :goto_1f
    const/4 v4, 0x0

    const/16 v16, 0x2c

    goto/16 :goto_2b

    :cond_41
    if-eqz v17, :cond_44

    .line 495
    iget v3, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v7, 0x1

    add-int/2addr v3, v7

    .line 496
    iget-object v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v3, v7, :cond_43

    .line 497
    iget-object v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v7, :cond_42

    .line 498
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_20

    .line 500
    :cond_42
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    const/4 v3, 0x1

    .line 504
    :cond_43
    :goto_20
    iget-object v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v16, 0x2c

    aput-char v16, v7, v15

    .line 505
    iput v3, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 507
    iget v3, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v7

    if-eqz v3, :cond_45

    .line 508
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    goto :goto_21

    :cond_44
    const/16 v16, 0x2c

    :cond_45
    :goto_21
    if-eq v10, v14, :cond_48

    if-nez v9, :cond_46

    const/4 v3, 0x1

    .line 514
    invoke-virtual {v6, v10, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 517
    :cond_46
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    :cond_47
    :goto_22
    const/4 v4, 0x0

    goto/16 :goto_2a

    :cond_48
    if-eq v4, v12, :cond_4a

    if-nez v9, :cond_49

    .line 520
    invoke-virtual {v13, v2}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    .line 522
    :cond_49
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_22

    :cond_4a
    if-nez v9, :cond_4f

    if-eqz v22, :cond_4e

    .line 528
    iget-object v3, v13, Lcom/alibaba/fastjson/serializer/FieldSerializer;->name_chars:[C

    .line 530
    array-length v4, v3

    .line 532
    iget v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v7, v4

    .line 533
    iget-object v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v10, v10

    if-le v7, v10, :cond_4d

    .line 534
    iget-object v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v10, :cond_4b

    .line 535
    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_23

    :cond_4b
    const/4 v7, 0x0

    .line 538
    :cond_4c
    iget-object v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v10, v10

    iget v14, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v10, v14

    .line 539
    iget-object v14, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v3, v7, v14, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    iget-object v14, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v14, v14

    iput v14, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 541
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    sub-int/2addr v4, v10

    add-int/2addr v7, v10

    .line 544
    iget-object v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v10, v10

    if-gt v4, v10, :cond_4c

    move v10, v7

    move v7, v4

    goto :goto_24

    :cond_4d
    :goto_23
    const/4 v10, 0x0

    .line 548
    :goto_24
    iget-object v14, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v3, v10, v14, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 549
    iput v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_25

    .line 552
    :cond_4e
    invoke-virtual {v13, v2}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    :cond_4f
    :goto_25
    if-eqz v11, :cond_59

    if-nez v24, :cond_59

    .line 557
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v3, :cond_56

    const/high16 v3, -0x80000000

    move/from16 v11, v25

    if-ne v11, v3, :cond_50

    const-string v3, "-2147483648"

    .line 561
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_22

    :cond_50
    if-gez v11, :cond_51

    neg-int v3, v11

    goto :goto_26

    :cond_51
    move v3, v11

    :goto_26
    const/4 v4, 0x0

    .line 566
    :goto_27
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sizeTable:[I

    aget v5, v5, v4

    if-gt v3, v5, :cond_55

    add-int/lit8 v3, v4, 0x1

    if-gez v11, :cond_52

    add-int/lit8 v3, v4, 0x2

    .line 577
    :cond_52
    iget v4, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    .line 578
    iget-object v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-le v4, v5, :cond_54

    .line 579
    iget-object v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v5, :cond_53

    .line 580
    invoke-virtual {v6, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_28

    .line 582
    :cond_53
    new-array v4, v3, [C

    int-to-long v7, v11

    .line 583
    invoke-static {v7, v8, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    const/4 v5, 0x0

    .line 584
    invoke-virtual {v6, v4, v5, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto/16 :goto_22

    :cond_54
    :goto_28
    int-to-long v7, v11

    .line 590
    iget-object v3, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v7, v8, v4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 591
    iput v4, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto/16 :goto_22

    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 595
    :cond_56
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v3, :cond_57

    .line 596
    iget-object v3, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-wide/from16 v4, v27

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto/16 :goto_22

    .line 597
    :cond_57
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v3, :cond_47

    if-eqz v26, :cond_58

    .line 599
    iget-object v3, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget-object v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->true_chars:[C

    array-length v5, v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto/16 :goto_22

    .line 601
    :cond_58
    iget-object v3, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget-object v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->false_chars:[C

    array-length v5, v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto/16 :goto_22

    :cond_59
    if-nez v9, :cond_63

    .line 606
    const-class v3, Ljava/lang/String;

    if-ne v8, v3, :cond_5e

    .line 607
    iget v3, v13, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    iget v4, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    or-int/2addr v3, v4

    if-nez v12, :cond_5c

    .line 610
    iget v4, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v7

    if-nez v4, :cond_5b

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_5a

    goto :goto_29

    .line 615
    :cond_5a
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto/16 :goto_22

    .line 613
    :cond_5b
    :goto_29
    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 618
    :cond_5c
    check-cast v12, Ljava/lang/String;

    if-eqz v21, :cond_5d

    .line 621
    invoke-virtual {v6, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_5d
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 623
    invoke-virtual {v6, v12, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto/16 :goto_22

    :cond_5e
    move-object/from16 v3, v34

    .line 627
    iget-boolean v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    if-eqz v3, :cond_62

    if-eqz v12, :cond_61

    .line 629
    iget v3, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_60

    .line 630
    check-cast v12, Ljava/lang/Enum;

    .line 632
    invoke-virtual {v12}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 633
    iget v4, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_5f

    .line 636
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_5f
    const/4 v4, 0x0

    .line 638
    invoke-virtual {v6, v3, v4, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto :goto_2a

    :cond_60
    const/4 v4, 0x0

    .line 641
    check-cast v12, Ljava/lang/Enum;

    .line 642
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_2a

    :cond_61
    const/4 v4, 0x0

    .line 645
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_2a

    :cond_62
    const/4 v4, 0x0

    .line 648
    invoke-virtual {v13, v2, v12}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto :goto_2a

    :cond_63
    const/4 v4, 0x0

    .line 652
    invoke-virtual {v13, v2, v12}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :goto_2a
    const/16 v17, 0x1

    :goto_2b
    add-int/lit8 v8, p4, 0x1

    move-object/from16 v3, p2

    move-object/from16 v7, v20

    move/from16 v14, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move-object/from16 v4, v29

    move-object/from16 v10, v30

    move-object/from16 v5, v31

    move-object/from16 v15, v33

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object/from16 v1, v18

    goto/16 :goto_33

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object/from16 v1, v18

    goto/16 :goto_32

    :cond_64
    move-object/from16 v20, v7

    const/4 v4, 0x0

    const/16 v16, 0x2c

    .line 661
    :try_start_10
    iget-object v1, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v1, :cond_66

    if-eqz v17, :cond_65

    move/from16 v10, v16

    goto :goto_2c

    :cond_65
    move v10, v4

    .line 663
    :goto_2c
    :try_start_11
    iget-object v1, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/serializer/AfterFilter;

    move-object/from16 v4, p2

    .line 664
    invoke-virtual {v3, v2, v4, v10}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v10
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_2d

    :cond_66
    move-object/from16 v7, v20

    .line 668
    :try_start_12
    array-length v1, v7
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-lez v1, :cond_67

    :try_start_13
    iget v1, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_67

    .line 669
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 670
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 675
    :cond_67
    :try_start_14
    iget v1, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 676
    iget-object v4, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    if-le v1, v4, :cond_69

    .line 677
    :try_start_15
    iget-object v4, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v4, :cond_68

    .line 678
    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_2e

    .line 680
    :cond_68
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move v11, v3

    goto :goto_2f

    :cond_69
    :goto_2e
    move v11, v1

    .line 684
    :goto_2f
    :try_start_16
    iget-object v1, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v19, v1, v3

    .line 685
    iput v11, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    move-object/from16 v1, v18

    .line 695
    iput-object v1, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v1, v18

    goto :goto_30

    :catch_2
    move-exception v0

    move-object/from16 v1, v18

    goto :goto_31

    :catchall_3
    move-exception v0

    move-object v1, v8

    :goto_30
    move-object v3, v0

    goto :goto_33

    :catch_3
    move-exception v0

    move-object v1, v8

    :goto_31
    move-object v3, v0

    :goto_32
    :try_start_17
    const-string v4, "write javaBean error, fastjson version 1.1.71"

    move-object/from16 v5, p3

    if-eqz v5, :cond_6a

    .line 691
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", fieldName : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 693
    :cond_6a
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v5, v4, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_30

    .line 695
    :goto_33
    iput-object v1, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 696
    throw v3
.end method
