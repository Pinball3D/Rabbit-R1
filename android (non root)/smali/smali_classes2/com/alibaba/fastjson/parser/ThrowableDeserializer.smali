.class public Lcom/alibaba/fastjson/parser/ThrowableDeserializer;
.super Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
.source "ThrowableDeserializer.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 22
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 24
    iget v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-ne v4, v6, :cond_0

    .line 25
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object v5

    .line 29
    :cond_0
    iget v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v7, 0x2

    const-string v8, "syntax error"

    const/4 v9, 0x0

    if-ne v4, v7, :cond_1

    .line 30
    iput v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_0

    .line 32
    :cond_1
    iget v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0xc

    if-ne v4, v10, :cond_1c

    :goto_0
    if-eqz v2, :cond_2

    .line 40
    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_2

    .line 41
    check-cast v2, Ljava/lang/Class;

    .line 42
    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v5

    :goto_1
    move-object v4, v5

    move-object v10, v4

    move-object v11, v10

    move-object v12, v11

    .line 53
    :goto_2
    iget-object v13, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xd

    const/16 v15, 0x10

    if-nez v13, :cond_4

    .line 56
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v7, v14, :cond_3

    .line 57
    invoke-virtual {v3, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_6

    .line 60
    :cond_3
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v7, v15, :cond_4

    :goto_3
    const/4 v7, 0x2

    goto :goto_2

    :cond_4
    const/16 v7, 0x3a

    .line 65
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    const-string v7, "@type"

    .line 67
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v14, 0x4

    if-eqz v7, :cond_6

    .line 68
    iget v2, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v2, v14, :cond_5

    .line 69
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 70
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v7, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    .line 74
    invoke-virtual {v3, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_5

    .line 72
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v7, "message"

    .line 75
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 76
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v7, v6, :cond_7

    move-object v11, v5

    goto :goto_4

    .line 78
    :cond_7
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v7, v14, :cond_8

    .line 79
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    .line 83
    :goto_4
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_5

    .line 81
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string v7, "cause"

    .line 84
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 85
    invoke-virtual {v0, v1, v5, v7}, Lcom/alibaba/fastjson/parser/ThrowableDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/lang/Throwable;

    goto :goto_5

    :cond_a
    const-string v7, "stackTrace"

    .line 86
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 87
    const-class v7, [Ljava/lang/StackTraceElement;

    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, [Ljava/lang/StackTraceElement;

    goto :goto_5

    :cond_b
    if-nez v4, :cond_c

    .line 90
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 92
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :goto_5
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v13, 0xd

    if-ne v7, v13, :cond_1b

    .line 96
    invoke-virtual {v3, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :goto_6
    if-nez v2, :cond_d

    .line 103
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v11, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 109
    :cond_d
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v6, v3

    move-object v8, v5

    move-object v13, v8

    move-object v14, v13

    move v7, v9

    :goto_7
    if-ge v7, v6, :cond_11

    aget-object v15, v3, v7

    .line 110
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_e

    move-object v14, v15

    goto :goto_8

    .line 115
    :cond_e
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_f

    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    const/16 v16, 0x0

    aget-object v5, v5, v16

    const-class v9, Ljava/lang/String;

    if-ne v5, v9, :cond_f

    move-object v13, v15

    goto :goto_8

    .line 120
    :cond_f
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    const/4 v9, 0x2

    if-ne v5, v9, :cond_10

    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    const/16 v16, 0x0

    aget-object v5, v5, v16

    const-class v9, Ljava/lang/String;

    if-ne v5, v9, :cond_10

    .line 121
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    const/4 v9, 0x1

    aget-object v5, v5, v9

    const-class v9, Ljava/lang/Throwable;

    if-ne v5, v9, :cond_10

    move-object v8, v15

    :cond_10
    :goto_8
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    goto :goto_7

    :cond_11
    if-eqz v8, :cond_12

    .line 128
    filled-new-array {v11, v10}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    goto :goto_9

    :cond_12
    if-eqz v13, :cond_13

    .line 130
    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    goto :goto_9

    :cond_13
    if-eqz v14, :cond_14

    const/4 v5, 0x0

    new-array v3, v5, [Ljava/lang/Object;

    .line 132
    invoke-virtual {v14, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    goto :goto_9

    :cond_14
    const/4 v3, 0x0

    :goto_9
    if-nez v3, :cond_15

    .line 136
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v11, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_15
    :goto_a
    if-eqz v12, :cond_16

    .line 144
    invoke-virtual {v3, v12}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_16
    if-eqz v4, :cond_1a

    if-eqz v2, :cond_18

    .line 151
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/ThrowableDeserializer;->clazz:Ljava/lang/Class;

    if-ne v2, v5, :cond_17

    goto :goto_b

    .line 154
    :cond_17
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 155
    instance-of v1, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v1, :cond_18

    .line 156
    check-cast v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    goto :goto_b

    :cond_18
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_1a

    .line 162
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 163
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 164
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 166
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 168
    invoke-virtual {v4, v3, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    :cond_1a
    return-object v3

    :catch_0
    move-exception v0

    .line 139
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "create instance error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1b
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 33
    :cond_1c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
