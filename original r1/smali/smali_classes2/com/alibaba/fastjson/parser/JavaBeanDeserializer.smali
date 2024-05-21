.class public Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private final alterNameFieldDeserializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field public final beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field private transient smartMatchHashArray:[J

.field private transient smartMatchHashArrayMapping:[I

.field private final sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v7, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->build(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/JavaBeanInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/JavaBeanInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/JavaBeanInfo;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    iput-object p4, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 45
    iget-object p3, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p3, p3

    new-array p3, p3, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 46
    iget-object p3, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p3, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_2

    .line 47
    iget-object v3, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v3, v3, v2

    .line 48
    invoke-virtual {p1, p1, p2, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 50
    aput-object v4, v5, v2

    .line 52
    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    array-length v5, v3

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    :cond_0
    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    .line 61
    iget-object p1, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p1, p1

    new-array p1, p1, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 62
    iget-object p1, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p1, p1

    :goto_2
    if-ge v1, p1, :cond_3

    .line 63
    iget-object p2, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object p2, p2, v1

    .line 64
    iget-object p2, p2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object p2

    iget-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 65
    aput-object p2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    const-string v1, "syntax error, expect {, actual "

    .line 343
    const-class v2, Lcom/alibaba/fastjson/JSON;

    if-eq v0, v2, :cond_7d

    const-class v2, Lcom/alibaba/fastjson/JSONObject;

    if-ne v0, v2, :cond_0

    goto/16 :goto_35

    .line 347
    :cond_0
    iget-object v10, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 349
    iget v2, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v3, 0x8

    const/16 v11, 0x10

    const/4 v12, 0x0

    if-ne v2, v3, :cond_1

    .line 351
    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object v12

    .line 355
    :cond_1
    iget-boolean v13, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    .line 357
    iget-object v3, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz p4, :cond_2

    if-eqz v3, :cond_2

    .line 359
    iget-object v3, v3, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_2
    move-object v14, v3

    const/16 v15, 0xd

    if-ne v2, v15, :cond_4

    .line 367
    :try_start_0
    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    if-nez p4, :cond_3

    .line 369
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p4

    .line 857
    :goto_0
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    :catchall_0
    move-exception v0

    :goto_1
    move-object/from16 v1, p4

    goto/16 :goto_34

    :cond_4
    const/16 v3, 0xe

    if-ne v2, v3, :cond_6

    :try_start_1
    iget-object v3, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 375
    iget-boolean v3, v3, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->supportBeanToArray:Z

    if-nez v3, :cond_5

    iget v3, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v4, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_6

    .line 378
    :cond_5
    invoke-direct/range {p0 .. p4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 857
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    :cond_6
    const/16 v3, 0xc

    const/4 v6, 0x4

    if-eq v2, v3, :cond_a

    if-eq v2, v11, :cond_a

    .line 383
    :try_start_2
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_7

    .line 857
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v12

    :cond_7
    if-ne v2, v6, :cond_8

    .line 388
    :try_start_3
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 390
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 857
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v12

    .line 395
    :cond_8
    :try_start_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 399
    instance-of v1, v9, Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, ", fieldName "

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 402
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 405
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 408
    :cond_a
    :try_start_5
    iget v1, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const/4 v2, 0x2

    const/4 v5, 0x0

    if-ne v1, v2, :cond_b

    .line 409
    :try_start_6
    iput v5, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_b
    :try_start_7
    iget-object v1, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 412
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    iget-object v1, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 415
    array-length v3, v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const-wide/16 v16, 0x0

    move-object/from16 v1, p4

    move v2, v5

    move-object v5, v12

    move-object/from16 v20, v5

    move/from16 v18, v13

    move-wide/from16 v12, v16

    :goto_2
    cmp-long v21, v12, v16

    if-eqz v21, :cond_d

    .line 422
    :try_start_8
    invoke-virtual {v7, v12, v13}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializerByHash(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v12

    if-eqz v12, :cond_c

    .line 424
    iget-object v13, v12, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 425
    iget-object v6, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    goto :goto_3

    :cond_c
    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_3
    move-object/from16 v23, v6

    move-object v6, v12

    move-object/from16 v22, v13

    move-wide/from16 v12, v16

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_4
    move-object v12, v5

    goto/16 :goto_34

    :cond_d
    const/4 v6, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_5
    if-nez v6, :cond_f

    if-ge v2, v3, :cond_e

    iget-object v6, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 432
    aget-object v6, v6, v2

    .line 433
    iget-object v11, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 434
    iget-object v15, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    add-int/lit8 v2, v2, 0x1

    move/from16 p4, v2

    move-object v2, v11

    goto :goto_6

    :cond_e
    add-int/lit8 v2, v2, 0x1

    :cond_f
    move/from16 p4, v2

    move-object/from16 v2, v22

    move-object/from16 v15, v23

    :goto_6
    const/16 v22, 0x0

    const-wide/16 v24, 0x0

    if-eqz v6, :cond_33

    move-wide/from16 v26, v12

    .line 450
    iget-wide v11, v2, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    .line 451
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move/from16 v28, v3

    const/4 v3, -0x2

    if-eq v15, v13, :cond_30

    const-class v13, Ljava/lang/Integer;

    if-ne v15, v13, :cond_10

    goto/16 :goto_10

    .line 462
    :cond_10
    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v15, v13, :cond_2d

    const-class v13, Ljava/lang/Long;

    if-ne v15, v13, :cond_11

    goto/16 :goto_e

    .line 473
    :cond_11
    const-class v13, Ljava/lang/String;

    if-ne v15, v13, :cond_14

    .line 474
    invoke-virtual {v10, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldString(J)Ljava/lang/String;

    move-result-object v11

    .line 476
    iget v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v12, :cond_12

    :goto_7
    move-object/from16 v29, v11

    move/from16 v13, v22

    move-wide/from16 v11, v24

    const/4 v3, 0x1

    const/16 v22, 0x1

    goto/16 :goto_14

    .line 479
    :cond_12
    iget v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v12, v3, :cond_13

    .line 480
    iget-wide v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_12

    :cond_13
    move-object/from16 v29, v11

    move/from16 v13, v22

    move-wide/from16 v11, v24

    const/4 v3, 0x0

    const/16 v22, 0x0

    goto/16 :goto_14

    .line 483
    :cond_14
    const-class v13, Ljava/util/Date;

    if-ne v15, v13, :cond_16

    .line 484
    invoke-virtual {v10, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDate(J)Ljava/util/Date;

    move-result-object v11

    .line 486
    iget v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v12, :cond_15

    goto :goto_7

    .line 489
    :cond_15
    iget v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v12, v3, :cond_13

    .line 490
    iget-wide v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_12

    .line 493
    :cond_16
    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v15, v13, :cond_2b

    const-class v13, Ljava/lang/Boolean;

    if-ne v15, v13, :cond_17

    goto/16 :goto_d

    .line 504
    :cond_17
    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v15, v13, :cond_29

    const-class v13, Ljava/lang/Float;

    if-ne v15, v13, :cond_18

    goto/16 :goto_a

    .line 514
    :cond_18
    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v15, v13, :cond_27

    const-class v13, Ljava/lang/Double;

    if-ne v15, v13, :cond_19

    goto/16 :goto_9

    .line 524
    :cond_19
    iget-boolean v13, v2, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    if-eqz v13, :cond_1c

    iget-object v13, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 525
    invoke-virtual {v13, v15}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v13

    instance-of v13, v13, Lcom/alibaba/fastjson/parser/EnumDeserializer;

    if-eqz v13, :cond_1c

    .line 527
    invoke-virtual {v10, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldSymbol(J)J

    move-result-wide v11

    .line 529
    iget v13, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v13, :cond_1a

    .line 533
    invoke-virtual {v6, v11, v12}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v3

    move-object v11, v3

    const/4 v3, 0x1

    const/4 v13, 0x1

    goto :goto_8

    .line 534
    :cond_1a
    iget v11, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v11, v3, :cond_1b

    .line 535
    iget-wide v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_12

    :cond_1b
    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_8
    move-object/from16 v29, v11

    move-wide/from16 v11, v24

    const/16 v30, 0x0

    move-wide/from16 v24, v16

    move/from16 v35, v22

    move/from16 v22, v13

    move/from16 v13, v35

    goto/16 :goto_16

    :cond_1c
    const-class v13, [I

    if-ne v15, v13, :cond_1e

    .line 539
    invoke-virtual {v10, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldIntArray(J)[I

    move-result-object v11

    .line 541
    iget v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v12, :cond_1d

    goto/16 :goto_7

    .line 544
    :cond_1d
    iget v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v12, v3, :cond_13

    .line 545
    iget-wide v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_12

    :cond_1e
    const-class v13, [F

    if-ne v15, v13, :cond_20

    .line 549
    invoke-virtual {v10, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloatArray(J)[F

    move-result-object v11

    .line 551
    iget v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v12, :cond_1f

    goto/16 :goto_7

    .line 554
    :cond_1f
    iget v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v12, v3, :cond_13

    .line 555
    iget-wide v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_12

    :cond_20
    const-class v13, [D

    if-ne v15, v13, :cond_22

    .line 559
    invoke-virtual {v10, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDoubleArray(J)[D

    move-result-object v11

    .line 561
    iget v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v12, :cond_21

    goto/16 :goto_7

    .line 564
    :cond_21
    iget v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v12, v3, :cond_13

    .line 565
    iget-wide v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_12

    :cond_22
    const-class v13, [[F

    if-ne v15, v13, :cond_24

    .line 569
    invoke-virtual {v10, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloatArray2(J)[[F

    move-result-object v11

    .line 571
    iget v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v12, :cond_23

    goto/16 :goto_7

    .line 574
    :cond_23
    iget v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v12, v3, :cond_13

    .line 575
    iget-wide v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_12

    :cond_24
    const-class v13, [[D

    if-ne v15, v13, :cond_26

    .line 579
    invoke-virtual {v10, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDoubleArray2(J)[[D

    move-result-object v11

    .line 581
    iget v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v12, :cond_25

    goto/16 :goto_7

    .line 584
    :cond_25
    iget v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v12, v3, :cond_13

    .line 585
    iget-wide v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_12

    .line 588
    :cond_26
    iget-wide v11, v2, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchField(J)Z

    move-result v3

    if-eqz v3, :cond_44

    move/from16 v13, v22

    move-wide/from16 v11, v24

    const/4 v3, 0x0

    goto :goto_c

    .line 515
    :cond_27
    :goto_9
    invoke-virtual {v10, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDouble(J)D

    move-result-wide v24

    .line 517
    iget v11, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v11, :cond_28

    goto :goto_b

    .line 520
    :cond_28
    iget v11, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v11, v3, :cond_34

    .line 521
    iget-wide v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_12

    .line 505
    :cond_29
    :goto_a
    invoke-virtual {v10, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloat(J)F

    move-result v22

    .line 507
    iget v11, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v11, :cond_2a

    :goto_b
    move/from16 v13, v22

    move-wide/from16 v11, v24

    const/4 v3, 0x1

    :goto_c
    const/16 v22, 0x1

    goto/16 :goto_13

    .line 510
    :cond_2a
    iget v11, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v11, v3, :cond_34

    .line 511
    iget-wide v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto :goto_12

    .line 495
    :cond_2b
    :goto_d
    invoke-virtual {v10, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldBoolean(J)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 497
    iget v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v12, :cond_2c

    goto/16 :goto_7

    .line 500
    :cond_2c
    iget v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v12, v3, :cond_13

    .line 501
    iget-wide v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto :goto_12

    .line 464
    :cond_2d
    :goto_e
    invoke-virtual {v10, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldLong(J)J

    move-result-wide v11

    .line 466
    iget v13, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v13, :cond_2e

    move/from16 v13, v22

    const/4 v3, 0x1

    const/16 v22, 0x1

    :goto_f
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-wide/from16 v35, v11

    move-wide/from16 v11, v24

    move-wide/from16 v24, v35

    goto :goto_16

    .line 469
    :cond_2e
    iget v13, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v13, v3, :cond_2f

    .line 470
    iget-wide v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto :goto_12

    :cond_2f
    move/from16 v13, v22

    const/4 v3, 0x0

    const/16 v22, 0x0

    goto :goto_f

    .line 453
    :cond_30
    :goto_10
    invoke-virtual {v10, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldInt(J)I

    move-result v11

    .line 455
    iget v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v12, :cond_31

    move/from16 v30, v11

    move/from16 v13, v22

    move-wide/from16 v11, v24

    const/4 v3, 0x1

    const/16 v22, 0x1

    :goto_11
    const/16 v29, 0x0

    goto :goto_15

    .line 458
    :cond_31
    iget v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v12, v3, :cond_32

    .line 459
    iget-wide v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    :goto_12
    move/from16 v2, p4

    goto/16 :goto_1c

    :cond_32
    move/from16 v30, v11

    move/from16 v13, v22

    move-wide/from16 v11, v24

    const/4 v3, 0x0

    const/16 v22, 0x0

    goto :goto_11

    :cond_33
    move/from16 v28, v3

    move-wide/from16 v26, v12

    :cond_34
    move/from16 v13, v22

    move-wide/from16 v11, v24

    const/4 v3, 0x0

    const/16 v22, 0x0

    :goto_13
    const/16 v29, 0x0

    :goto_14
    const/16 v30, 0x0

    :goto_15
    move-wide/from16 v24, v16

    :goto_16
    if-nez v22, :cond_4e

    move/from16 v31, v13

    .line 596
    iget-object v13, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v10, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_36

    move-object/from16 v32, v2

    .line 599
    iget v2, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-wide/from16 v33, v11

    const/16 v11, 0xd

    if-ne v2, v11, :cond_35

    const/16 v11, 0x10

    .line 601
    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_1a

    :cond_35
    const/16 v11, 0x10

    if-ne v2, v11, :cond_37

    goto/16 :goto_1b

    :cond_36
    move-object/from16 v32, v2

    move-wide/from16 v33, v11

    :cond_37
    const-string v2, "$ref"

    const/16 v11, 0x3a

    if-ne v2, v13, :cond_41

    if-eqz v14, :cond_41

    .line 610
    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 611
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_40

    .line 613
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    const-string v2, "@"

    .line 614
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 615
    iget-object v0, v14, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v1, v0

    :goto_17
    const/16 v0, 0xd

    goto :goto_19

    :cond_38
    const-string v2, ".."

    .line 616
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 617
    iget-object v2, v14, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 618
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v3, :cond_39

    .line 619
    iget-object v1, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_17

    .line 621
    :cond_39
    new-instance v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v3, v2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v0, 0x1

    .line 622
    iput v0, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_17

    :cond_3a
    const-string v2, "$"

    .line 624
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    move-object v2, v14

    .line 626
    :goto_18
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v3, :cond_3b

    .line 627
    iget-object v2, v2, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_18

    .line 630
    :cond_3b
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v3, :cond_3c

    .line 631
    iget-object v1, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_17

    .line 633
    :cond_3c
    new-instance v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v3, v2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v0, 0x1

    .line 634
    iput v0, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_17

    .line 637
    :cond_3d
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v2, v14, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v0, 0x1

    .line 638
    iput v0, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_17

    .line 644
    :goto_19
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 645
    iget v2, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v2, v0, :cond_3f

    const/16 v0, 0x10

    .line 648
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 650
    invoke-virtual {v8, v14, v1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v5, :cond_3e

    .line 855
    iput-object v1, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 857
    :cond_3e
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v1

    .line 646
    :cond_3f
    :try_start_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "illegal ref"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_40
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal ref, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_41
    move-object v2, v13

    move/from16 v12, v31

    if-eqz v4, :cond_42

    .line 656
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_43

    :cond_42
    const-string v13, "@type"

    if-ne v13, v2, :cond_4d

    .line 658
    :cond_43
    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 659
    iget v2, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4c

    .line 660
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    .line 661
    invoke-virtual {v10, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 663
    instance-of v3, v0, Ljava/lang/Class;

    if-eqz v3, :cond_45

    move-object v3, v0

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 664
    iget v2, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_44

    .line 665
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_1a
    move-object v13, v1

    move-object/from16 v1, v20

    const/4 v15, 0x0

    goto/16 :goto_2d

    :cond_44
    :goto_1b
    move/from16 v2, p4

    move-wide/from16 v12, v26

    :goto_1c
    move/from16 v3, v28

    const/4 v6, 0x4

    const/16 v11, 0x10

    const/16 v15, 0xd

    goto/16 :goto_2

    .line 671
    :cond_45
    iget-object v3, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v6, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    invoke-virtual {v7, v3, v6, v2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-result-object v3

    if-nez v3, :cond_48

    .line 674
    iget-object v3, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v6, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    iget v7, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    invoke-virtual {v3, v2, v6, v7}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v3

    .line 676
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_47

    if-eqz v3, :cond_46

    .line 678
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_1d

    .line 681
    :cond_46
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "type not match"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_47
    :goto_1d
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    move-object/from16 v35, v3

    move-object v3, v0

    move-object/from16 v0, v35

    goto :goto_1e

    :cond_48
    const/4 v0, 0x0

    .line 686
    :goto_1e
    instance-of v6, v3, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v6, :cond_49

    .line 687
    check-cast v3, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    const/4 v6, 0x0

    .line 688
    invoke-direct {v3, v8, v0, v9, v6}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v4, :cond_4a

    .line 690
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 692
    invoke-virtual {v3, v0, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1f

    .line 696
    :cond_49
    invoke-interface {v3, v8, v0, v9}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_4a
    :goto_1f
    if-eqz v5, :cond_4b

    .line 855
    iput-object v1, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 857
    :cond_4b
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    .line 700
    :cond_4c
    :try_start_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "syntax error"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    move-object v11, v2

    goto :goto_20

    :cond_4e
    move-object/from16 v32, v2

    move-wide/from16 v33, v11

    move v12, v13

    const/4 v11, 0x0

    :goto_20
    if-nez v1, :cond_50

    if-nez v20, :cond_50

    .line 706
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4f

    .line 708
    new-instance v2, Ljava/util/HashMap;

    iget-object v13, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v13, v13

    invoke-direct {v2, v13}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v20, v2

    :cond_4f
    if-nez v18, :cond_50

    .line 711
    invoke-virtual {v8, v14, v1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_50
    move-object v13, v1

    move-object/from16 v35, v20

    move-object/from16 v20, v5

    move-object/from16 v5, v35

    if-eqz v22, :cond_69

    if-nez v3, :cond_51

    .line 717
    :try_start_b
    invoke-virtual {v6, v8, v13, v0, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    move-object v11, v4

    move-object/from16 v19, v5

    move/from16 v12, v28

    const/4 v15, 0x0

    const/16 v21, 0x4

    goto/16 :goto_2b

    :cond_51
    if-nez v13, :cond_5a

    .line 720
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v15, v1, :cond_59

    const-class v1, Ljava/lang/Integer;

    if-ne v15, v1, :cond_52

    goto :goto_24

    .line 722
    :cond_52
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v15, v1, :cond_58

    const-class v1, Ljava/lang/Long;

    if-ne v15, v1, :cond_53

    goto :goto_23

    .line 724
    :cond_53
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v15, v1, :cond_57

    const-class v1, Ljava/lang/Float;

    if-ne v15, v1, :cond_54

    goto :goto_22

    .line 726
    :cond_54
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v15, v1, :cond_56

    const-class v1, Ljava/lang/Double;

    if-ne v15, v1, :cond_55

    goto :goto_21

    :cond_55
    move-object/from16 v11, v29

    goto :goto_25

    .line 727
    :cond_56
    :goto_21
    new-instance v11, Ljava/lang/Double;

    move-wide/from16 v1, v33

    invoke-direct {v11, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_25

    .line 725
    :cond_57
    :goto_22
    new-instance v11, Ljava/lang/Float;

    invoke-direct {v11, v12}, Ljava/lang/Float;-><init>(F)V

    goto :goto_25

    .line 723
    :cond_58
    :goto_23
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_25

    .line 721
    :cond_59
    :goto_24
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :goto_25
    move-object/from16 v3, v32

    .line 729
    iget-object v1, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v5, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto/16 :goto_2a

    :cond_5a
    move-object/from16 v3, v32

    move-wide/from16 v1, v33

    if-nez v29, :cond_67

    .line 732
    :try_start_c
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v15, v11, :cond_65

    const-class v11, Ljava/lang/Integer;

    if-ne v15, v11, :cond_5b

    goto/16 :goto_29

    .line 738
    :cond_5b
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v15, v11, :cond_63

    const-class v11, Ljava/lang/Long;

    if-ne v15, v11, :cond_5c

    goto :goto_28

    .line 744
    :cond_5c
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v15, v11, :cond_61

    const-class v11, Ljava/lang/Float;

    if-ne v15, v11, :cond_5d

    goto :goto_27

    .line 750
    :cond_5d
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v15, v11, :cond_5f

    const-class v11, Ljava/lang/Double;

    if-ne v15, v11, :cond_5e

    goto :goto_26

    :cond_5e
    move-object/from16 v11, v29

    .line 757
    invoke-virtual {v6, v13, v11}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2a

    .line 751
    :cond_5f
    :goto_26
    iget-boolean v11, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v11, :cond_60

    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v15, v11, :cond_60

    .line 752
    invoke-virtual {v6, v13, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;D)V

    goto/16 :goto_2a

    .line 754
    :cond_60
    new-instance v11, Ljava/lang/Double;

    invoke-direct {v11, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6, v13, v11}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2a

    .line 745
    :cond_61
    :goto_27
    iget-boolean v1, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v1, :cond_62

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v15, v1, :cond_62

    .line 746
    invoke-virtual {v6, v13, v12}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;F)V

    goto :goto_2a

    .line 748
    :cond_62
    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v12}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v6, v13, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2a

    .line 739
    :cond_63
    :goto_28
    iget-boolean v1, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v1, :cond_64

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v15, v1, :cond_64

    move-wide/from16 v11, v24

    .line 740
    invoke-virtual {v6, v13, v11, v12}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;J)V

    goto :goto_2a

    :cond_64
    move-wide/from16 v11, v24

    .line 742
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v13, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2a

    .line 733
    :cond_65
    :goto_29
    iget-boolean v1, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v1, :cond_66

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v15, v1, :cond_66

    move/from16 v11, v30

    .line 734
    invoke-virtual {v6, v13, v11}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;I)V

    goto :goto_2a

    :cond_66
    move/from16 v11, v30

    .line 736
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v13, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_2a

    :catch_0
    move-exception v0

    .line 760
    :try_start_d
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set property error, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_67
    move-object/from16 v11, v29

    .line 763
    invoke-virtual {v6, v13, v11}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 765
    :goto_2a
    iget v1, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v6, 0x4

    if-ne v1, v6, :cond_68

    move-object/from16 v19, v5

    const/4 v15, 0x0

    goto :goto_2c

    :cond_68
    move-object v11, v4

    move-object/from16 v19, v5

    move/from16 v21, v6

    move/from16 v12, v28

    const/4 v15, 0x0

    goto :goto_2b

    :cond_69
    const/4 v6, 0x4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v12, v28

    move-object v3, v11

    move-object v11, v4

    move-object v4, v13

    move-object/from16 v19, v5

    const/4 v15, 0x0

    move-object/from16 v5, p2

    move/from16 v21, v6

    move-object/from16 v6, v19

    .line 770
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 772
    iget v1, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_6a

    .line 773
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_2c

    :cond_6a
    move v3, v2

    const/4 v1, 0x0

    const/16 v2, 0x10

    goto/16 :goto_33

    .line 778
    :cond_6b
    iget v1, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_7b

    .line 783
    :goto_2b
    iget v1, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_6c

    const/4 v1, 0x0

    const/16 v3, 0xd

    goto/16 :goto_33

    .line 787
    :cond_6c
    iget v1, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v3, 0xd

    if-ne v1, v3, :cond_79

    .line 788
    invoke-virtual {v10, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :goto_2c
    move-object/from16 v1, v19

    move-object/from16 v5, v20

    :goto_2d
    if-nez v13, :cond_77

    if-nez v1, :cond_6f

    .line 803
    :try_start_e
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-nez v5, :cond_6d

    .line 805
    :try_start_f
    invoke-virtual {v8, v14, v1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_6d
    if-eqz v5, :cond_6e

    .line 855
    iput-object v1, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 857
    :cond_6e
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v1

    :cond_6f
    :try_start_10
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 810
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    if-eqz v0, :cond_70

    .line 811
    array-length v2, v0

    goto :goto_2e

    :cond_70
    iget-object v2, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v2, v2

    .line 812
    :goto_2e
    new-array v3, v2, [Ljava/lang/Object;

    :goto_2f
    if-ge v15, v2, :cond_73

    iget-object v4, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 814
    aget-object v4, v4, v15

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v0, :cond_71

    .line 817
    iget-object v6, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_30

    .line 819
    :cond_71
    iget-object v6, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_30
    if-nez v6, :cond_72

    .line 822
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 824
    :cond_72
    aput-object v6, v3, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_2f

    :cond_73
    iget-object v2, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 827
    iget-object v2, v2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v2, :cond_76

    :try_start_11
    iget-object v2, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 829
    iget-object v2, v2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v0, :cond_75

    .line 836
    :try_start_12
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_74
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 837
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    if-eqz v3, :cond_74

    .line 839
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_31

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto/16 :goto_4

    :cond_75
    move-object v13, v2

    goto :goto_32

    :catch_1
    move-exception v0

    .line 831
    :try_start_13
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create instance error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 832
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_76
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 843
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-eqz v0, :cond_77

    :try_start_14
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 845
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_32

    :catch_2
    move-exception v0

    .line 847
    :try_start_15
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create factory method error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :catchall_3
    move-exception v0

    move-object v12, v5

    move-object v1, v13

    goto :goto_34

    :cond_77
    :goto_32
    if-eqz v5, :cond_78

    .line 855
    iput-object v13, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 857
    :cond_78
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v13

    :cond_79
    const/4 v1, 0x0

    .line 792
    :try_start_16
    iget v4, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0x12

    if-eq v4, v5, :cond_7a

    iget v4, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7a

    :goto_33
    move v15, v3

    move-object v4, v11

    move v3, v12

    move-object v1, v13

    move-object/from16 v5, v20

    move/from16 v6, v21

    move-wide/from16 v12, v26

    move v11, v2

    move-object/from16 v20, v19

    move/from16 v2, p4

    goto/16 :goto_2

    .line 793
    :cond_7a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, unexpect token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_7b
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error, unexpect token \':\'"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :catchall_4
    move-exception v0

    move-object v1, v13

    move-object/from16 v12, v20

    goto :goto_34

    :catchall_5
    move-exception v0

    move-object v1, v12

    goto/16 :goto_1

    :goto_34
    if-eqz v12, :cond_7c

    .line 855
    iput-object v1, v12, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 857
    :cond_7c
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 858
    throw v0

    .line 344
    :cond_7d
    :goto_35
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 123
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 124
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 126
    array-length v4, v4

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x10

    const/16 v7, 0x2c

    if-ge v5, v4, :cond_31

    add-int/lit8 v9, v4, -0x1

    const/16 v10, 0x5d

    if-ne v5, v9, :cond_0

    move v9, v10

    goto :goto_1

    :cond_0
    move v9, v7

    :goto_1
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 129
    aget-object v11, v11, v5

    .line 130
    iget-object v12, v11, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 131
    iget-object v13, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 133
    :try_start_0
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v15, 0xf

    if-ne v13, v14, :cond_6

    .line 134
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v13

    long-to-int v9, v13

    .line 135
    iget-boolean v13, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v13, :cond_1

    .line 136
    iget-object v11, v12, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v11, v3, v9}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_2

    .line 138
    :cond_1
    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v3, v13}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    :goto_2
    iget-char v9, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v9, v7, :cond_3

    .line 142
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 143
    iget v9, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v9, :cond_2

    const/16 v8, 0x1a

    goto :goto_3

    :cond_2
    iget-object v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 145
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_3
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 146
    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_5

    .line 147
    :cond_3
    iget-char v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v6, v10, :cond_5

    .line 148
    iget v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 149
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_4

    const/16 v8, 0x1a

    goto :goto_4

    :cond_4
    iget-object v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 151
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_4
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 152
    iput v15, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_5

    .line 154
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_5
    move-object/from16 v14, p3

    goto/16 :goto_19

    .line 156
    :cond_6
    const-class v14, Ljava/lang/String;

    const/16 v8, 0x22

    if-ne v13, v14, :cond_f

    .line 158
    iget-char v9, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v9, v8, :cond_7

    .line 159
    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanStringValue(C)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    .line 160
    :cond_7
    iget-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v9, 0x6e

    if-ne v8, v9, :cond_e

    iget-object v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v9, "null"

    iget v13, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 161
    invoke-virtual {v8, v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 162
    iget v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x4

    iput v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 164
    iget v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 165
    iget v9, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v13, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v9, v13, :cond_8

    const/16 v8, 0x1a

    goto :goto_6

    :cond_8
    iget-object v9, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 167
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_6
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v8, 0x0

    .line 174
    :goto_7
    iget-boolean v9, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v9, :cond_9

    .line 175
    iget-object v9, v12, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v3, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 177
    :cond_9
    invoke-virtual {v11, v3, v8}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    :goto_8
    iget-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v8, v7, :cond_b

    .line 181
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 182
    iget v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_a

    const/16 v8, 0x1a

    goto :goto_9

    :cond_a
    iget-object v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 184
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_9
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 185
    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_5

    .line 186
    :cond_b
    iget-char v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v6, v10, :cond_d

    .line 187
    iget v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 188
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_c

    const/16 v8, 0x1a

    goto :goto_a

    :cond_c
    iget-object v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 190
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_a
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 191
    iput v15, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_5

    .line 193
    :cond_d
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_5

    .line 171
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match string. feild : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v14, p3

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object/from16 v14, p3

    .line 195
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v13, v8, :cond_15

    .line 196
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v8

    .line 197
    iget-boolean v13, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v13, :cond_10

    .line 198
    iget-object v11, v12, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v11, v3, v8, v9}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_b

    .line 200
    :cond_10
    new-instance v13, Ljava/lang/Long;

    invoke-direct {v13, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v11, v3, v13}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    :goto_b
    iget-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v8, v7, :cond_12

    .line 204
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 205
    iget v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_11

    const/16 v8, 0x1a

    goto :goto_c

    :cond_11
    iget-object v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 207
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_c
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 208
    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 209
    :cond_12
    iget-char v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v6, v10, :cond_14

    .line 210
    iget v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 211
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_13

    const/16 v8, 0x1a

    goto :goto_d

    :cond_13
    iget-object v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 213
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_d
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 214
    iput v15, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 216
    :cond_14
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_19

    .line 218
    :cond_15
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v13, v8, :cond_1b

    .line 219
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanBoolean()Z

    move-result v8

    .line 220
    iget-boolean v9, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v9, :cond_16

    .line 221
    iget-object v9, v12, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v3, v8}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_e

    .line 223
    :cond_16
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v11, v3, v8}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    :goto_e
    iget-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v8, v7, :cond_18

    .line 227
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 228
    iget v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_17

    const/16 v8, 0x1a

    goto :goto_f

    :cond_17
    iget-object v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 230
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_f
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 231
    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 232
    :cond_18
    iget-char v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v6, v10, :cond_1a

    .line 233
    iget v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 234
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_19

    const/16 v8, 0x1a

    goto :goto_10

    :cond_19
    iget-object v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 236
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_10
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 237
    iput v15, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 239
    :cond_1a
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_19

    .line 241
    :cond_1b
    invoke-virtual {v13}, Ljava/lang/Class;->isEnum()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 242
    iget-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v9, 0x22

    if-ne v8, v9, :cond_1d

    .line 245
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1c

    const/4 v8, 0x0

    goto :goto_11

    .line 248
    :cond_1c
    invoke-static {v13, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v8

    goto :goto_11

    :cond_1d
    const/16 v9, 0x30

    if-lt v8, v9, :cond_22

    const/16 v9, 0x39

    if-gt v8, v9, :cond_22

    .line 250
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v8

    long-to-int v8, v8

    .line 252
    move-object v9, v11

    check-cast v9, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;

    iget-object v13, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v9

    check-cast v9, Lcom/alibaba/fastjson/parser/EnumDeserializer;

    .line 253
    iget-object v9, v9, Lcom/alibaba/fastjson/parser/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    aget-object v8, v9, v8

    .line 258
    :goto_11
    invoke-virtual {v11, v3, v8}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 260
    iget-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v8, v7, :cond_1f

    .line 261
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 262
    iget v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_1e

    const/16 v8, 0x1a

    goto :goto_12

    :cond_1e
    iget-object v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 264
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_12
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 265
    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 266
    :cond_1f
    iget-char v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v6, v10, :cond_21

    .line 267
    iget v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 268
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_20

    const/16 v8, 0x1a

    goto :goto_13

    :cond_20
    iget-object v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 270
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_13
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 271
    iput v15, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 273
    :cond_21
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_19

    .line 255
    :cond_22
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal enum."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_23
    const-class v8, Ljava/util/Date;

    if-ne v13, v8, :cond_28

    iget-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v13, 0x31

    if-ne v8, v13, :cond_28

    .line 276
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v8

    .line 277
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v3, v13}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    iget-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v8, v7, :cond_25

    .line 280
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 281
    iget v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_24

    const/16 v8, 0x1a

    goto :goto_14

    :cond_24
    iget-object v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 283
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_14
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 284
    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 285
    :cond_25
    iget-char v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v6, v10, :cond_27

    .line 286
    iget v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 287
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_26

    const/16 v8, 0x1a

    goto :goto_15

    :cond_26
    iget-object v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 289
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_15
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 290
    iput v15, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 292
    :cond_27
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_19

    .line 295
    :cond_28
    iget-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v13, 0x5b

    if-ne v8, v13, :cond_2a

    .line 296
    iget v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 297
    iget v13, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v13, :cond_29

    const/16 v8, 0x1a

    goto :goto_16

    :cond_29
    iget-object v13, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 299
    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_16
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0xe

    .line 300
    iput v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_18

    .line 301
    :cond_2a
    iget-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v13, 0x7b

    if-ne v8, v13, :cond_2c

    .line 302
    iget v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 303
    iget v13, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v13, :cond_2b

    const/16 v8, 0x1a

    goto :goto_17

    :cond_2b
    iget-object v13, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 305
    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_17
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0xc

    .line 306
    iput v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_18

    .line 308
    :cond_2c
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 311
    :goto_18
    iget-object v8, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    const/4 v13, 0x0

    invoke-virtual {v11, v1, v3, v8, v13}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "syntax error"

    if-ne v9, v10, :cond_2e

    .line 314
    :try_start_1
    iget v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v6, v15, :cond_2d

    goto :goto_19

    .line 315
    :cond_2d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    if-ne v9, v7, :cond_30

    .line 318
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v7, v6, :cond_2f

    goto :goto_19

    .line 319
    :cond_2f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_30
    :goto_19
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 324
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v12, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 328
    :cond_31
    iget-char v0, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v7, :cond_33

    .line 329
    iget v0, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 330
    iget v1, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_32

    const/16 v8, 0x1a

    goto :goto_1a

    :cond_32
    iget-object v1, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 332
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_1a
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 333
    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1b

    .line 335
    :cond_33
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_1b
    return-object v3
.end method

.method private parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 918
    iget-object v12, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 920
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    const/4 v13, 0x0

    if-nez v2, :cond_7

    .line 923
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 925
    array-length v5, v5

    new-array v5, v5, [J

    move v6, v13

    :goto_0
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 926
    array-length v8, v7

    if-ge v6, v8, :cond_0

    .line 927
    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 929
    :cond_0
    invoke-static {v5}, Ljava/util/Arrays;->sort([J)V

    iput-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    :cond_1
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    .line 935
    invoke-static {v5, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    if-gez v3, :cond_2

    const-string v4, "is"

    .line 937
    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x2

    .line 938
    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    .line 939
    invoke-static {v3, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    goto :goto_1

    :cond_2
    move v4, v13

    :cond_3
    :goto_1
    if-ltz v3, :cond_7

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    const/4 v6, -0x1

    if-nez v5, :cond_6

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    .line 944
    array-length v5, v5

    new-array v5, v5, [I

    .line 945
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    move v7, v13

    :goto_2
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 946
    array-length v9, v8

    if-ge v7, v9, :cond_5

    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    .line 947
    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 948
    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v14

    .line 947
    invoke-static {v9, v14, v15}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v8

    if-ltz v8, :cond_4

    .line 950
    aput v7, v5, v8

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    iput-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    :cond_6
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    .line 956
    aget v3, v5, v3

    if-eq v3, v6, :cond_7

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 958
    aget-object v2, v2, v3

    .line 959
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eqz v4, :cond_7

    .line 960
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_7

    const-class v4, Ljava/lang/Boolean;

    if-eq v3, v4, :cond_7

    const/4 v2, 0x0

    .line 967
    :cond_7
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    const/4 v14, 0x1

    if-nez v2, :cond_10

    .line 968
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    and-int/2addr v4, v3

    if-nez v4, :cond_8

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_10

    :cond_8
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    if-nez v3, :cond_e

    .line 972
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v3, v14, v4, v14}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    :goto_3
    if-eqz v4, :cond_d

    .line 973
    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_d

    .line 974
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 975
    array-length v6, v5

    move v7, v13

    :goto_4
    if-ge v7, v6, :cond_c

    aget-object v8, v5, v7

    .line 976
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 977
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v15

    if-eqz v15, :cond_9

    goto :goto_5

    .line 980
    :cond_9
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v15

    and-int/lit8 v16, v15, 0x10

    if-nez v16, :cond_b

    and-int/lit8 v15, v15, 0x8

    if-eqz v15, :cond_a

    goto :goto_5

    .line 984
    :cond_a
    invoke-virtual {v3, v9, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 973
    :cond_c
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_3

    :cond_d
    iput-object v3, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    :cond_e
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    .line 990
    invoke-interface {v3, v10}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 992
    instance-of v2, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-eqz v2, :cond_f

    .line 993
    move-object v2, v3

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    goto :goto_6

    .line 995
    :cond_f
    move-object v7, v3

    check-cast v7, Ljava/lang/reflect/Field;

    .line 996
    invoke-virtual {v7, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 997
    new-instance v15, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v15

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 998
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-direct {v2, v3, v4, v15}, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    .line 999
    invoke-interface {v3, v10, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    :goto_6
    if-nez v2, :cond_11

    .line 1005
    invoke-virtual {v0, v1, v11, v10}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V

    return v13

    :cond_11
    const/16 v0, 0x3a

    .line 1010
    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    move-object/from16 v0, p4

    move-object/from16 v3, p5

    .line 1012
    invoke-virtual {v2, v1, v11, v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    return v14
.end method


# virtual methods
.method protected createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5

    .line 70
    instance-of v0, p2, Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .line 71
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    check-cast p2, Ljava/lang/Class;

    .line 73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 74
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget p1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 75
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    new-array p1, v1, [Ljava/lang/Class;

    aput-object p2, p1, v2

    .line 76
    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 81
    iget-object p2, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    const/4 v0, 0x0

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez p2, :cond_2

    return-object v0

    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 85
    iget-object p2, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget p2, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-lez p2, :cond_3

    return-object v0

    :cond_3
    :try_start_0
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 91
    iget-object p2, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 92
    iget v3, v3, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-nez v3, :cond_5

    if-eqz p2, :cond_4

    new-array v0, v2, [Ljava/lang/Object;

    .line 94
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 96
    iget-object p2, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_5
    new-array v0, v1, [Ljava/lang/Object;

    .line 99
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_1
    if-eqz p1, :cond_7

    .line 102
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget p1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 104
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, p1

    :goto_2
    if-ge v2, v0, :cond_7

    aget-object v1, p1, v2

    .line 105
    iget-object v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_6

    const-string v3, ""

    .line 106
    invoke-virtual {v1, p2, v3}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return-object p2

    :catch_0
    move-exception p1

    .line 111
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "create instance error, class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 1056
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .line 1057
    invoke-virtual {p0, v2, v0}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 1059
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1060
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 1065
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1066
    iget-object v5, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_1

    .line 1068
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v1

    .line 1069
    invoke-static {v3, v4, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v3

    .line 1070
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1072
    :cond_1
    iget-object v5, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 1073
    iget-object v6, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 1075
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_3

    .line 1076
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v7, :cond_2

    .line 1077
    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 1081
    :cond_2
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v3, v7, :cond_c

    const/4 v3, 0x1

    .line 1082
    invoke-virtual {v5, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 1085
    :cond_3
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_4

    .line 1086
    instance-of v7, v3, Ljava/lang/Number;

    if-eqz v7, :cond_c

    .line 1087
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v5, v0, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1090
    :cond_4
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_5

    .line 1091
    instance-of v7, v3, Ljava/lang/Number;

    if-eqz v7, :cond_c

    .line 1092
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v5, v0, v3, v4}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_0

    .line 1095
    :cond_5
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v8, 0xa

    if-ne v6, v7, :cond_8

    .line 1096
    instance-of v7, v3, Ljava/lang/Number;

    if-eqz v7, :cond_6

    .line 1097
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v5, v0, v3}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_0

    .line 1099
    :cond_6
    instance-of v7, v3, Ljava/lang/String;

    if-eqz v7, :cond_c

    .line 1100
    check-cast v3, Ljava/lang/String;

    .line 1102
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v8, :cond_7

    .line 1103
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->parseFloat(Ljava/lang/String;)F

    move-result v3

    goto :goto_1

    .line 1105
    :cond_7
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 1108
    :goto_1
    invoke-virtual {v5, v0, v3}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_0

    .line 1111
    :cond_8
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_b

    .line 1112
    instance-of v7, v3, Ljava/lang/Number;

    if-eqz v7, :cond_9

    .line 1113
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v5, v0, v3, v4}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_0

    .line 1115
    :cond_9
    instance-of v7, v3, Ljava/lang/String;

    if-eqz v7, :cond_c

    .line 1116
    check-cast v3, Ljava/lang/String;

    .line 1118
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v8, :cond_a

    .line 1119
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    goto :goto_2

    .line 1121
    :cond_a
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 1124
    :goto_2
    invoke-virtual {v5, v0, v3, v4}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_0

    :cond_b
    if-eqz v3, :cond_c

    .line 1127
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-ne v6, v7, :cond_c

    .line 1128
    invoke-virtual {v5, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1132
    :cond_c
    iget-object v4, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 1133
    const-class v7, Ljava/util/Date;

    if-ne v6, v7, :cond_d

    instance-of v7, v3, Ljava/lang/String;

    if-eqz v7, :cond_d

    .line 1135
    :try_start_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-object v3, v2

    goto :goto_3

    .line 1141
    :cond_d
    instance-of v4, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_e

    .line 1142
    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, v6, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    .line 1144
    :cond_e
    invoke-static {v3, v6, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v3

    .line 1147
    :goto_3
    invoke-virtual {v5, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    return-object v0

    :cond_10
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 1154
    iget-object p2, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1155
    array-length v0, p2

    .line 1156
    new-array v3, v0, [Ljava/lang/Object;

    :goto_4
    if-ge v1, v0, :cond_12

    .line 1158
    aget-object v4, p2, v1

    .line 1159
    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_11

    .line 1161
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 1163
    :cond_11
    aput-object v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 1166
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_13

    :try_start_1
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 1168
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 1170
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "create instance error, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 1171
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_13
    :goto_5
    return-object v2
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 878
    iget-boolean v1, v1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 879
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 880
    aget-object v1, v1, v2

    .line 881
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 889
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gt v2, v1, :cond_6

    add-int v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 894
    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 896
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_1

    :cond_4
    if-lez v4, :cond_5

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 903
    aget-object p0, p0, v3

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    if-eqz p0, :cond_7

    .line 908
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    return-object p0

    :cond_7
    return-object v0
.end method

.method protected getFieldDeserializerByHash(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 862
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 863
    aget-object v1, v1, v0

    .line 864
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-wide v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    .locals 6

    .line 1179
    iget-object v0, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1183
    :cond_0
    iget-object p2, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {p2}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object p2

    array-length v0, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    .line 1184
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 1185
    instance-of v4, v3, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v4, :cond_2

    .line 1186
    check-cast v3, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    .line 1188
    iget-object v4, v3, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 1189
    iget-object v5, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v3

    .line 1193
    :cond_1
    invoke-virtual {p0, p1, v4, p3}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1018
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1019
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    const/16 p0, 0x3a

    .line 1023
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 1025
    iget-object p0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1027
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    .line 1028
    invoke-interface {v0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;->getExtraType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 1033
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 1034
    :cond_1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 1036
    :goto_1
    instance-of v0, p2, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    if-eqz v0, :cond_2

    .line 1037
    check-cast p2, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    .line 1038
    invoke-interface {p2, p3, p0}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;->processExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1042
    :cond_2
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 1044
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    .line 1045
    invoke-interface {v0, p2, p3, p0}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;->processExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    return-void

    .line 1020
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "setter not found, class "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ", property "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
