.class Lcom/alibaba/fastjson/parser/JavaBeanInfo;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public final creatorConstructorParameters:[Ljava/lang/String;

.field final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field final defaultConstructorParameterSize:I

.field final factoryMethod:Ljava/lang/reflect/Method;

.field final fields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field final jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

.field ordered:Z

.field public final parserFeatures:I

.field final sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field final supportBeanToArray:Z

.field public final typeKey:Ljava/lang/String;

.field public final typeKeyHashCode:J

.field public final typeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    iput-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    iput-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    iput-object p4, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    iput-object p7, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 p3, 0x0

    if-eqz p8, :cond_0

    .line 55
    array-length v1, p8

    array-length v2, p5

    if-ne v1, v2, :cond_0

    iput-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p8, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    :goto_0
    if-eqz p7, :cond_3

    .line 64
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object p8

    .line 65
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p8

    :goto_1
    iput-object p8, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 67
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p8

    if-lez p8, :cond_2

    move-object p3, p1

    :cond_2
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 70
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object p1

    array-length p3, p1

    move p8, v0

    move v1, p8

    :goto_2
    if-ge p8, p3, :cond_4

    aget-object v2, p1, p8

    .line 71
    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v1, v2

    add-int/lit8 p8, p8, 0x1

    goto :goto_2

    .line 74
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    move v1, v0

    :cond_4
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    if-nez p1, :cond_5

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKeyHashCode:J

    goto :goto_3

    .line 80
    :cond_5
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKeyHashCode:J

    :goto_3
    iput v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->parserFeatures:I

    if-eqz p7, :cond_7

    .line 86
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object p1

    array-length p3, p1

    move p7, v0

    move p8, p7

    :goto_4
    if-ge p7, p3, :cond_8

    aget-object v1, p1, p7

    .line 87
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    if-ne v1, v2, :cond_6

    const/4 p8, 0x1

    :cond_6
    add-int/lit8 p7, p7, 0x1

    goto :goto_4

    :cond_7
    move p8, v0

    :cond_8
    iput-boolean p8, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->supportBeanToArray:Z

    .line 94
    invoke-direct {p0, p5, p6}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->computeSortedFields([Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object p1

    .line 95
    invoke-static {p5, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_5

    :cond_9
    move-object p5, p1

    :goto_5
    iput-object p5, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz p2, :cond_a

    .line 98
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    goto :goto_6

    :cond_a
    if-eqz p4, :cond_b

    .line 100
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    :cond_b
    :goto_6
    iput v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    return-void
.end method

.method static addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Z)Z"
        }
    .end annotation

    if-nez p2, :cond_2

    .line 189
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 190
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 191
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    iget-boolean v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    return v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static build(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/reflect/Type;",
            "ZZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/parser/JavaBeanInfo;"
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v12, p1

    move/from16 v13, p3

    move-object/from16 v14, p7

    .line 216
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 217
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 219
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 221
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v1

    and-int/lit16 v2, v12, 0x400

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v16, 0x0

    if-nez v2, :cond_3

    .line 223
    array-length v3, v0

    if-eq v3, v9, :cond_0

    if-nez v1, :cond_3

    :cond_0
    :try_start_0
    new-array v3, v8, [Ljava/lang/Class;

    .line 225
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object/from16 v3, v16

    :goto_0
    if-nez v3, :cond_2

    .line 231
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v4

    if-eqz v4, :cond_2

    and-int/lit8 v4, v12, 0x8

    if-nez v4, :cond_2

    .line 232
    array-length v4, v0

    move v5, v8

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    .line 233
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v17, v3

    .line 234
    array-length v3, v7

    if-ne v3, v9, :cond_1

    aget-object v3, v7, v8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v7, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v17

    goto :goto_1

    :cond_2
    move-object/from16 v17, v3

    move-object/from16 v7, v17

    goto :goto_2

    :cond_3
    move-object/from16 v7, v16

    :goto_2
    const/16 v17, 0x0

    if-eqz v13, :cond_4

    move-object/from16 v8, v16

    move-object v9, v8

    goto/16 :goto_7

    .line 251
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v11

    move-object/from16 v5, v16

    :goto_3
    if-eqz v4, :cond_b

    .line 253
    const-class v6, Ljava/lang/Object;

    if-eq v4, v6, :cond_b

    .line 254
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 255
    array-length v9, v6

    :goto_4
    if-ge v8, v9, :cond_a

    move/from16 v20, v9

    aget-object v9, v6, v8

    move-object/from16 v21, v6

    .line 256
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    and-int/lit8 v22, v6, 0x8

    if-eqz v22, :cond_6

    .line 259
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v9, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez v5, :cond_5

    move-object v5, v9

    goto :goto_6

    .line 261
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "multi-json creator"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    and-int/lit8 v22, v6, 0x2

    if-nez v22, :cond_8

    move-object/from16 v22, v5

    and-int/lit16 v5, v6, 0x100

    if-nez v5, :cond_9

    and-int/lit8 v5, v6, 0x4

    if-eqz v5, :cond_7

    goto :goto_5

    .line 273
    :cond_7
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    move-object/from16 v22, v5

    :cond_9
    :goto_5
    move-object/from16 v5, v22

    :goto_6
    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v20

    move-object/from16 v6, v21

    goto :goto_4

    :cond_a
    move-object/from16 v22, v5

    .line 253
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_3

    .line 277
    :cond_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/reflect/Method;

    .line 278
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v8, v4

    move-object v9, v5

    .line 281
    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 283
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_d

    if-eqz v2, :cond_c

    goto :goto_8

    :cond_c
    const/4 v2, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v2, 0x1

    :goto_9
    if-eqz v7, :cond_f

    if-eqz v2, :cond_e

    goto :goto_b

    :cond_e
    move-object v14, v6

    move-object/from16 v28, v8

    move-object/from16 v21, v16

    :goto_a
    const/4 v8, 0x0

    goto/16 :goto_23

    .line 287
    :cond_f
    :goto_b
    array-length v3, v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_11

    aget-object v5, v0, v4

    move/from16 v20, v3

    .line 288
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONCreator;

    if-eqz v3, :cond_10

    goto :goto_d

    :cond_10
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v20

    goto :goto_c

    :cond_11
    move-object/from16 v5, v16

    :goto_d
    const-string v4, "illegal json creator"

    if-eqz v5, :cond_1a

    .line 300
    invoke-static {v11, v5, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 302
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    if-eqz p6, :cond_12

    .line 304
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_e

    :cond_12
    move-object/from16 v17, v3

    .line 307
    :goto_e
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v20

    const/4 v2, 0x0

    .line 308
    :goto_f
    array-length v0, v3

    if-ge v2, v0, :cond_17

    .line 309
    aget-object v0, v20, v2

    .line 311
    array-length v1, v0

    move-object/from16 v21, v4

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v1, :cond_14

    move/from16 v22, v1

    aget-object v1, v0, v4

    move-object/from16 v23, v0

    .line 312
    instance-of v0, v1, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_13

    .line 313
    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_11

    :cond_13
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v22

    move-object/from16 v0, v23

    goto :goto_10

    :cond_14
    move-object/from16 v1, v16

    :goto_11
    if-eqz v1, :cond_16

    .line 321
    aget-object v4, v3, v2

    .line 322
    aget-object v22, v17, v2

    .line 323
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0, v6, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 326
    invoke-static {v11, v0, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 329
    :cond_15
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v23

    .line 330
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v24

    .line 331
    new-instance v14, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v25, v0

    move-object v0, v14

    move/from16 v26, v2

    move-object/from16 v2, p0

    move-object/from16 v27, v3

    move-object v3, v4

    move-object/from16 v28, v8

    move-object/from16 v8, v21

    move-object/from16 v4, v22

    move-object/from16 v21, v5

    move-object/from16 v5, v25

    move-object/from16 v29, v6

    move/from16 v6, v23

    move-object/from16 v30, v7

    move/from16 v7, v24

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 338
    invoke-static {v15, v14, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    add-int/lit8 v2, v26, 0x1

    move-object/from16 v14, p7

    move-object v4, v8

    move-object/from16 v5, v21

    move-object/from16 v3, v27

    move-object/from16 v8, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    goto :goto_f

    :cond_16
    move-object/from16 v8, v21

    .line 318
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object/from16 v21, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v28, v8

    .line 341
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 342
    invoke-interface {v15, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 344
    new-array v2, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    .line 345
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    if-eqz p4, :cond_18

    .line 348
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v11, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 350
    :cond_18
    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v0, :cond_19

    .line 352
    aget-object v4, v1, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_19
    move-object/from16 v17, v2

    move-object/from16 v14, v29

    move-object/from16 v7, v30

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v21, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v28, v8

    move-object v8, v4

    if-eqz v9, :cond_23

    .line 356
    invoke-static {v11, v9, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 358
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    .line 360
    array-length v0, v14

    if-lez v0, :cond_22

    if-eqz p6, :cond_1b

    .line 362
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v12, v0

    goto :goto_13

    :cond_1b
    move-object v12, v14

    .line 365
    :goto_13
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v18

    const/4 v7, 0x0

    .line 366
    :goto_14
    array-length v0, v14

    if-ge v7, v0, :cond_1f

    .line 367
    aget-object v0, v18, v7

    .line 369
    array-length v1, v0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 370
    instance-of v4, v3, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v4, :cond_1c

    .line 371
    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_16

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1d
    move-object/from16 v3, v16

    :goto_16
    if-eqz v3, :cond_1e

    .line 379
    aget-object v4, v14, v7

    .line 380
    aget-object v5, v12, v7

    .line 381
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v29

    invoke-static {v11, v0, v6, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v20

    .line 382
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v21

    .line 383
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v22

    .line 384
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object v0, v2

    move-object v3, v2

    move-object/from16 v2, p0

    move-object/from16 p1, v12

    move-object v12, v3

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v14

    move-object v14, v6

    move/from16 v6, v21

    move/from16 v21, v7

    move/from16 v7, v22

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 391
    invoke-static {v15, v12, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    add-int/lit8 v7, v21, 0x1

    move-object/from16 v12, p1

    move-object/from16 v29, v14

    move-object/from16 v14, v20

    goto :goto_14

    .line 376
    :cond_1e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_1f
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 395
    invoke-interface {v15, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 397
    new-array v1, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v2, 0x0

    .line 398
    invoke-static {v5, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 401
    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move-object v6, v5

    goto :goto_17

    :cond_20
    move-object v6, v1

    :goto_17
    if-eqz p4, :cond_21

    .line 406
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object v7, v0

    goto :goto_18

    :cond_21
    move-object/from16 v7, v16

    .line 408
    :goto_18
    new-instance v10, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v4, v9

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V

    return-object v10

    :cond_22
    move-object/from16 v14, v29

    goto/16 :goto_21

    :cond_23
    move-object/from16 v14, v29

    if-nez v2, :cond_31

    const-string v2, "default constructor not found. "

    if-eqz v1, :cond_30

    .line 413
    array-length v1, v0

    if-lez v1, :cond_30

    .line 414
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2f

    .line 417
    array-length v1, v0

    move-object/from16 v7, v21

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v1, :cond_26

    aget-object v2, v0, v3

    .line 418
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 419
    array-length v5, v4

    if-lez v5, :cond_24

    array-length v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-object v5, v4, v5

    .line 420
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "kotlin.jvm.internal.DefaultConstructorMarker"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    goto :goto_1a

    :cond_24
    if-eqz v7, :cond_25

    .line 425
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    array-length v4, v4

    if-lt v5, v4, :cond_25

    goto :goto_1a

    :cond_25
    move-object v7, v2

    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_26
    const/4 v2, 0x1

    .line 432
    invoke-virtual {v7, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 433
    invoke-static {v11, v7, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 435
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    if-eqz p6, :cond_27

    .line 437
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_1b

    :cond_27
    move-object/from16 v17, v6

    .line 440
    :goto_1b
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v20

    const/4 v5, 0x0

    .line 441
    :goto_1c
    array-length v0, v6

    if-ge v5, v0, :cond_2d

    .line 442
    aget-object v0, v8, v5

    .line 444
    aget-object v1, v20, v5

    .line 446
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_29

    aget-object v4, v1, v3

    move-object/from16 v21, v1

    .line 447
    instance-of v1, v4, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v1, :cond_28

    .line 448
    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_1e

    :cond_28
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v21

    goto :goto_1d

    :cond_29
    move-object/from16 v4, v16

    .line 453
    :goto_1e
    aget-object v3, v6, v5

    .line 454
    aget-object v21, v17, v5

    .line 455
    invoke-static {v11, v0, v14, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_2a

    if-nez v4, :cond_2a

    .line 458
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    :cond_2a
    if-eqz v4, :cond_2c

    .line 463
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v1

    .line 464
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v22

    .line 466
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    .line 467
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_2b

    move-object v0, v4

    :cond_2b
    move/from16 v23, v22

    move/from16 v22, v1

    move-object v1, v0

    goto :goto_1f

    :cond_2c
    move-object v1, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 475
    :goto_1f
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object v0, v4

    move-object/from16 v24, v2

    move-object/from16 v2, p0

    move-object/from16 v25, v8

    move-object v8, v4

    move-object/from16 v4, v21

    move/from16 v21, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v6

    move/from16 v6, v22

    move-object/from16 v22, v7

    move/from16 v7, v23

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 482
    invoke-static {v15, v8, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    add-int/lit8 v5, v21, 0x1

    move-object/from16 v7, v22

    move-object/from16 v6, v24

    move-object/from16 v8, v25

    goto :goto_1c

    :cond_2d
    move-object/from16 v22, v7

    .line 485
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 486
    invoke-interface {v15, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 488
    new-array v2, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v8, 0x0

    .line 489
    invoke-static {v1, v8, v2, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 492
    new-array v2, v0, [Ljava/lang/String;

    move v3, v8

    :goto_20
    if-ge v3, v0, :cond_2e

    .line 494
    aget-object v4, v1, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_2e
    move-object/from16 v17, v2

    move-object/from16 v21, v22

    goto :goto_22

    .line 502
    :cond_2f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_30
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    :goto_21
    const/4 v8, 0x0

    :goto_22
    move-object/from16 v7, v30

    :goto_23
    if-eqz v7, :cond_32

    .line 511
    invoke-static {v11, v7, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    :cond_32
    const/4 v5, 0x4

    if-nez v13, :cond_4a

    move-object/from16 v4, v28

    .line 515
    array-length v3, v4

    move v2, v8

    :goto_24
    if-ge v2, v3, :cond_49

    aget-object v1, v4, v2

    .line 517
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_34

    :cond_33
    move/from16 v28, v2

    move/from16 v29, v3

    move-object/from16 v31, v4

    move-object/from16 v20, v7

    move-object/from16 v19, v9

    move-object/from16 v26, v10

    move-object/from16 v24, v14

    :goto_25
    const/16 v25, 0x1

    goto/16 :goto_2f

    .line 522
    :cond_34
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 523
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v6, v5, :cond_35

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v6, v5, :cond_33

    .line 524
    :cond_35
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_36

    :goto_26
    move/from16 v28, v2

    move/from16 v29, v3

    move-object/from16 v31, v4

    move/from16 v25, v6

    move-object/from16 v20, v7

    move-object/from16 v19, v9

    move-object/from16 v26, v10

    move-object/from16 v24, v14

    goto/16 :goto_2f

    :cond_36
    if-eqz p5, :cond_37

    .line 530
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_27

    :cond_37
    move-object/from16 v5, v16

    :goto_27
    if-nez v5, :cond_38

    if-eqz p5, :cond_38

    .line 533
    invoke-static {v11, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v5

    :cond_38
    move-object/from16 v18, v5

    if-eqz v18, :cond_3b

    .line 537
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v5

    if-nez v5, :cond_39

    goto :goto_26

    .line 541
    :cond_39
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v22

    .line 542
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v23

    .line 544
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3a

    .line 545
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    .line 546
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v26, v0

    move-object/from16 v27, v1

    move-object v1, v5

    move/from16 v28, v2

    move-object/from16 v2, v27

    move/from16 v29, v3

    move-object/from16 v3, v24

    move-object/from16 v24, v4

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v19, v6

    move/from16 v6, v22

    move-object/from16 v20, v7

    move/from16 v7, v23

    move-object/from16 v31, v24

    move-object/from16 v8, v18

    move-object/from16 v19, v9

    move-object/from16 v9, v25

    move-object/from16 v32, v10

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    move-object/from16 v10, v27

    .line 558
    invoke-static {v11, v10, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto :goto_29

    :cond_3a
    move/from16 v28, v2

    move/from16 v29, v3

    move-object/from16 v31, v4

    move-object/from16 v20, v7

    move-object/from16 v19, v9

    move-object/from16 v32, v10

    move-object v10, v1

    move/from16 v8, v22

    goto :goto_28

    :cond_3b
    move/from16 v28, v2

    move/from16 v29, v3

    move-object/from16 v31, v4

    move-object/from16 v20, v7

    move-object/from16 v19, v9

    move-object/from16 v32, v10

    move-object v10, v1

    const/4 v8, 0x0

    const/16 v23, 0x0

    :goto_28
    const-string v1, "set"

    .line 563
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    :cond_3c
    :goto_29
    move-object/from16 v24, v14

    move-object/from16 v26, v32

    goto/16 :goto_25

    :cond_3d
    const/4 v9, 0x3

    .line 567
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 570
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 571
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v1, :cond_3e

    .line 572
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v32

    const/4 v7, 0x4

    goto :goto_2b

    .line 574
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_3f
    const/4 v7, 0x4

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_40

    .line 577
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_2a
    move-object/from16 v6, v32

    goto :goto_2b

    :cond_40
    const/16 v2, 0x66

    if-ne v1, v2, :cond_41

    .line 579
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 580
    :cond_41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3c

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 581
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 586
    :goto_2b
    invoke-static {v11, v0, v14, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_43

    .line 587
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_42

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "is"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x1

    .line 589
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 590
    invoke-static {v11, v1, v14, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_2c

    :cond_42
    const/4 v4, 0x1

    goto :goto_2c

    :cond_43
    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_2c
    move-object v3, v1

    if-eqz v3, :cond_46

    if-eqz p5, :cond_44

    .line 594
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v22, v1

    goto :goto_2d

    :cond_44
    move-object/from16 v22, v16

    :goto_2d
    if-eqz v22, :cond_46

    .line 597
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v8

    .line 598
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v23

    .line 600
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_45

    .line 601
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 602
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object v0, v2

    move-object/from16 v24, v14

    move-object v14, v2

    move-object v2, v10

    move/from16 v25, v4

    move-object/from16 v4, p0

    move v10, v5

    move-object/from16 v5, p2

    move-object/from16 v26, v6

    move v6, v8

    move v8, v7

    move/from16 v7, v23

    move-object/from16 v8, v18

    move-object/from16 v9, v22

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    invoke-static {v15, v14, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    goto :goto_2f

    :cond_45
    move/from16 v25, v4

    move-object/from16 v26, v6

    move-object/from16 v24, v14

    if-nez v18, :cond_47

    move-object/from16 v14, p7

    move v6, v8

    move-object/from16 v8, v22

    goto :goto_2e

    :cond_46
    move/from16 v25, v4

    move-object/from16 v26, v6

    move-object/from16 v24, v14

    :cond_47
    move-object/from16 v14, p7

    move v6, v8

    move-object/from16 v8, v18

    :goto_2e
    move/from16 v7, v23

    if-eqz v14, :cond_48

    .line 617
    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_48
    move-object v1, v0

    .line 620
    new-instance v9, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v18, 0x0

    move-object v0, v9

    move-object v2, v10

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v33, v9

    move-object/from16 v9, v18

    move-object v14, v10

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v33

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 624
    invoke-static {v11, v14, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    :goto_2f
    add-int/lit8 v2, v28, 0x1

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    move-object/from16 v14, v24

    move-object/from16 v10, v26

    move/from16 v3, v29

    move-object/from16 v4, v31

    const/4 v5, 0x4

    const/4 v8, 0x0

    goto/16 :goto_24

    :cond_49
    move-object/from16 v31, v4

    move-object/from16 v20, v7

    move-object/from16 v19, v9

    move-object/from16 v24, v14

    goto :goto_30

    :cond_4a
    move-object/from16 v20, v7

    move-object/from16 v19, v9

    move-object/from16 v24, v14

    move-object/from16 v31, v28

    :goto_30
    const/16 v25, 0x1

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v1, v24

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 631
    array-length v2, v1

    const/4 v8, 0x0

    :goto_31
    if-ge v8, v2, :cond_4e

    aget-object v3, v1, v8

    .line 632
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_4b

    goto :goto_32

    :cond_4b
    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4c

    .line 638
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 639
    const-class v5, Ljava/util/Map;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_4c

    const-class v5, Ljava/util/Collection;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 645
    :cond_4c
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4d

    .line 646
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    :goto_32
    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    .line 650
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    :goto_33
    if-eqz v1, :cond_53

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_53

    .line 651
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v8, 0x0

    :goto_34
    if-ge v8, v3, :cond_52

    aget-object v4, v2, v8

    .line 652
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_4f

    goto :goto_35

    :cond_4f
    and-int/lit8 v6, v5, 0x10

    if-eqz v6, :cond_50

    .line 658
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 659
    const-class v7, Ljava/util/Map;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_50

    const-class v7, Ljava/util/Collection;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_51

    :cond_50
    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_51

    .line 666
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_51
    :goto_35
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 650
    :cond_52
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_33

    .line 672
    :cond_53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_36
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/reflect/Field;

    .line 673
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 675
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_37
    if-ge v8, v1, :cond_55

    .line 676
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 677
    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    move/from16 v9, v25

    :cond_54
    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    :cond_55
    if-eqz v9, :cond_56

    goto :goto_36

    :cond_56
    if-eqz p5, :cond_57

    .line 690
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v9, v1

    goto :goto_38

    :cond_57
    move-object/from16 v9, v16

    :goto_38
    if-eqz v9, :cond_59

    .line 693
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v1

    .line 694
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v2

    .line 696
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_58

    .line 697
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    :cond_58
    move-object/from16 v10, p7

    move v6, v1

    move v7, v2

    goto :goto_39

    :cond_59
    move-object/from16 v10, p7

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_39
    if-eqz v10, :cond_5a

    .line 702
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5a
    move-object v1, v0

    .line 705
    invoke-static {v11, v3, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 706
    new-instance v8, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v2, 0x0

    const/16 v18, 0x0

    move-object v0, v8

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v34, v8

    move-object/from16 v8, v18

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v34

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    goto/16 :goto_36

    :cond_5b
    if-nez v13, :cond_63

    move-object/from16 v14, v31

    .line 721
    array-length v10, v14

    const/4 v9, 0x0

    :goto_3a
    if-ge v9, v10, :cond_63

    aget-object v8, v14, v9

    .line 722
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 723
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v7, 0x4

    if-ge v1, v7, :cond_5c

    goto/16 :goto_3e

    :cond_5c
    const-string v1, "get"

    .line 727
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 728
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_5d

    goto/16 :goto_3d

    .line 732
    :cond_5d
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 733
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-class v2, Ljava/util/Map;

    .line 734
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_61

    :cond_5e
    if-eqz p5, :cond_5f

    .line 738
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v18, v1

    goto :goto_3b

    :cond_5f
    move-object/from16 v18, v16

    :goto_3b
    if-eqz v18, :cond_60

    .line 742
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_60

    goto :goto_3c

    :cond_60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 746
    :goto_3c
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v0, v5

    move-object v2, v8

    move-object/from16 v4, p0

    move-object/from16 v35, v5

    move-object/from16 v5, p2

    move/from16 v25, v6

    move/from16 v6, v22

    move/from16 v22, v7

    move/from16 v7, v23

    move-object/from16 v36, v8

    move-object/from16 v8, v18

    move/from16 v18, v9

    move-object/from16 v9, v24

    move/from16 v23, v10

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v35

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    move-object/from16 v0, v36

    .line 750
    invoke-static {v11, v0, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto :goto_3f

    :cond_61
    :goto_3d
    move/from16 v25, v6

    move/from16 v22, v7

    move/from16 v18, v9

    move/from16 v23, v10

    goto :goto_3f

    :cond_62
    :goto_3e
    move/from16 v22, v7

    move/from16 v18, v9

    move/from16 v23, v10

    const/16 v25, 0x3

    :goto_3f
    add-int/lit8 v9, v18, 0x1

    move/from16 v10, v23

    goto/16 :goto_3a

    .line 756
    :cond_63
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 757
    invoke-interface {v15, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 759
    new-array v6, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v1, 0x0

    .line 760
    invoke-static {v5, v1, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 761
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    if-eqz p4, :cond_64

    .line 763
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object v7, v0

    goto :goto_40

    :cond_64
    move-object/from16 v7, v16

    .line 764
    :goto_40
    new-instance v9, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v19

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V

    return-object v9
.end method

.method private computeSortedFields([Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;
    .locals 8

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v0, :cond_0

    return-object p2

    .line 109
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 110
    array-length v1, v0

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    move v2, v1

    .line 112
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    move v3, v1

    .line 114
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_2

    .line 115
    aget-object v4, p2, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object p2

    .line 130
    :cond_3
    array-length v2, v0

    array-length p1, p1

    const/4 v3, 0x1

    if-ne v2, p1, :cond_9

    move p1, v1

    .line 132
    :goto_2
    array-length v2, v0

    if-ge p1, v2, :cond_8

    .line 133
    aget-object v2, p2, p1

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v4, v0, p1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 143
    array-length p1, p2

    new-array p1, p1, [Lcom/alibaba/fastjson/util/FieldInfo;

    move v2, v1

    .line 144
    :goto_3
    array-length v4, v0

    if-ge v2, v4, :cond_6

    move v4, v1

    .line 145
    :goto_4
    array-length v5, p2

    if-ge v4, v5, :cond_5

    .line 146
    aget-object v5, p2, v4

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 147
    aget-object v4, p2, v4

    aput-object v4, p1, v2

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    iput-boolean v3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    return-object p1

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_8
    return-object p2

    .line 157
    :cond_9
    array-length p1, p2

    new-array v2, p1, [Lcom/alibaba/fastjson/util/FieldInfo;

    move v4, v1

    .line 158
    :goto_6
    array-length v5, v0

    if-ge v4, v5, :cond_c

    move v5, v1

    .line 159
    :goto_7
    array-length v6, p2

    if-ge v5, v6, :cond_b

    .line 160
    aget-object v6, p2, v5

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 161
    aget-object v5, p2, v5

    aput-object v5, v2, v4

    goto :goto_8

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 167
    :cond_c
    array-length v0, v0

    move v4, v1

    .line 168
    :goto_9
    array-length v5, p2

    if-ge v4, v5, :cond_f

    move v5, v1

    :goto_a
    if-ge v5, p1, :cond_e

    if-ge v5, v0, :cond_e

    .line 171
    aget-object v6, v2, v4

    aget-object v7, p2, v5

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/util/FieldInfo;->equals(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_b

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 177
    :cond_e
    aget-object v5, p2, v4

    aput-object v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_f
    iput-boolean v3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    :cond_10
    return-object p2
.end method
