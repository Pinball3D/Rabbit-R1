.class Lcom/alibaba/fastjson/parser/MapDeserializer;
.super Ljava/lang/Object;
.source "MapDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/parser/MapDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/alibaba/fastjson/parser/MapDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/MapDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/MapDeserializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 171
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 173
    iget v5, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v6, 0xc

    const/16 v7, 0x10

    if-eq v5, v6, :cond_1

    if-ne v5, v7, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "syntax error, expect {, actual "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    :goto_0
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    .line 179
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v6

    .line 180
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 182
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 185
    :goto_1
    :try_start_0
    iget v9, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0xd

    if-ne v9, v10, :cond_2

    .line 187
    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    :cond_2
    const/16 v11, 0x3a

    const/4 v13, 0x1

    const/4 v14, 0x4

    if-ne v9, v14, :cond_8

    .line 191
    :try_start_1
    iget v15, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    if-ne v15, v14, :cond_8

    iget-object v15, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v12, "$ref"

    iget v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v7, v13

    .line 192
    invoke-virtual {v15, v12, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 193
    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 196
    invoke-virtual {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 197
    iget v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v0, v14, :cond_7

    .line 198
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".."

    .line 199
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 201
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const-string v2, "$"

    .line 202
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, v8

    .line 204
    :goto_2
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v2, :cond_4

    .line 205
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_2

    .line 208
    :cond_4
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_3

    .line 210
    :cond_5
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v2, v8, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 211
    iput v13, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v12, 0x0

    .line 217
    :goto_3
    invoke-virtual {v4, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 218
    iget v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v0, v10, :cond_6

    const/16 v0, 0x10

    .line 221
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v12

    .line 219
    :cond_6
    :try_start_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "illegal ref"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal ref, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_8
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_a

    if-ne v9, v14, :cond_a

    const-string v7, "@type"

    .line 231
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 232
    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 233
    invoke-virtual {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    const/16 v7, 0x10

    .line 234
    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 235
    iget v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v7, v10, :cond_9

    .line 236
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    .line 239
    :cond_9
    :try_start_3
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :cond_a
    const/4 v7, 0x0

    .line 242
    invoke-interface {v5, v1, v2, v7}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 244
    iget v9, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0x11

    if-ne v9, v10, :cond_d

    .line 248
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 250
    invoke-interface {v6, v1, v3, v7}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 251
    iget v10, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    if-ne v10, v13, :cond_b

    .line 252
    invoke-virtual {v1, v0, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    .line 255
    :cond_b
    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v9, 0x10

    if-ne v7, v9, :cond_c

    .line 258
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :cond_c
    move v7, v9

    goto/16 :goto_1

    .line 245
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect :, actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 262
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 263
    throw v0
.end method

.method public static parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 60
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_f

    .line 64
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 67
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 68
    iget-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_0
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1

    .line 70
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 71
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 72
    iget-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const-string v3, "syntax error, "

    const/4 v4, 0x0

    const/16 v5, 0x3a

    const/16 v6, 0x22

    const/16 v7, 0x10

    if-ne v2, v6, :cond_3

    .line 77
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v0, v2, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 79
    iget-char v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v8, v5, :cond_2

    goto :goto_1

    .line 81
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 v8, 0x7d

    if-ne v2, v8, :cond_4

    .line 84
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 85
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 86
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object p1

    :cond_4
    const/16 v8, 0x27

    if-ne v2, v8, :cond_6

    .line 89
    :try_start_2
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v0, v2, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 91
    iget-char v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v8, v5, :cond_5

    goto :goto_1

    .line 93
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_6
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 98
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v3, v5, :cond_e

    .line 104
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 105
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 106
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 108
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const-string v3, "@type"

    const/16 v4, 0xd

    const/4 v5, 0x0

    if-ne v2, v3, :cond_9

    .line 110
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 111
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v0, v2, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v2

    .line 112
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    invoke-virtual {v3, v2, v5, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v2

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_7

    .line 115
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 116
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v2, v4, :cond_0

    .line 117
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object p1

    .line 123
    :cond_7
    :try_start_3
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object p1

    .line 125
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 p2, 0x2

    .line 127
    iput p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    if-eqz v1, :cond_8

    .line 129
    instance-of p2, p3, Ljava/lang/Integer;

    if-nez p2, :cond_8

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    .line 133
    :cond_8
    invoke-interface {p1, p0, v2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object p1

    .line 137
    :cond_9
    :try_start_4
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 139
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 140
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_a

    .line 142
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_2

    .line 144
    :cond_a
    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 147
    :goto_2
    invoke-interface {p1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_b

    .line 149
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    .line 151
    :cond_b
    invoke-virtual {p0, v1, v5, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 153
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v3, 0x14

    if-eq v2, v3, :cond_d

    const/16 v3, 0xf

    if-ne v2, v3, :cond_c

    goto :goto_3

    :cond_c
    if-ne v2, v4, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object p1

    :cond_d
    :goto_3
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object p1

    .line 100
    :cond_e
    :try_start_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expect \':\' at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", actual "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    .line 164
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 165
    throw p1

    .line 61
    :cond_f
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "syntax error, expect {, actual "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 270
    const-class v0, Ljava/util/Properties;

    if-ne p1, v0, :cond_0

    .line 271
    new-instance p0, Ljava/util/Properties;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    return-object p0

    .line 274
    :cond_0
    const-class v0, Ljava/util/Hashtable;

    if-ne p1, v0, :cond_1

    .line 275
    new-instance p0, Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    return-object p0

    .line 278
    :cond_1
    const-class v0, Ljava/util/IdentityHashMap;

    if-ne p1, v0, :cond_2

    .line 279
    new-instance p0, Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object p0

    .line 282
    :cond_2
    const-class v0, Ljava/util/SortedMap;

    if-eq p1, v0, :cond_d

    const-class v0, Ljava/util/TreeMap;

    if-ne p1, v0, :cond_3

    goto/16 :goto_2

    .line 286
    :cond_3
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    if-eq p1, v0, :cond_c

    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-ne p1, v0, :cond_4

    goto/16 :goto_1

    .line 290
    :cond_4
    const-class v0, Ljava/util/Map;

    if-eq p1, v0, :cond_b

    const-class v0, Ljava/util/HashMap;

    if-ne p1, v0, :cond_5

    goto :goto_0

    .line 294
    :cond_5
    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p1, v0, :cond_6

    .line 295
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0

    .line 298
    :cond_6
    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    if-ne p1, v0, :cond_7

    .line 299
    new-instance p0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    return-object p0

    .line 302
    :cond_7
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_9

    .line 303
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 305
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 306
    const-class v1, Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 307
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 309
    new-instance p1, Ljava/util/EnumMap;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/Class;

    invoke-direct {p1, p0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object p1

    .line 312
    :cond_8
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/MapDeserializer;->createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 315
    :cond_9
    move-object p0, p1

    check-cast p0, Ljava/lang/Class;

    .line 316
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const-string v1, "unsupport type "

    if-nez v0, :cond_a

    .line 321
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 323
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 317
    :cond_a
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 291
    :cond_b
    :goto_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 287
    :cond_c
    :goto_1
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0

    .line 283
    :cond_d
    :goto_2
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    return-object p0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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

    .line 22
    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    if-ne p2, v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    return-object p0

    .line 26
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 27
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/16 p0, 0x10

    .line 28
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_1
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/MapDeserializer;->createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object p0

    .line 34
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 37
    :try_start_0
    invoke-virtual {p1, v0, p0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 38
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_3

    .line 39
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 40
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 41
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    const/4 v2, 0x1

    aget-object p2, p2, v2

    .line 43
    const-class v2, Ljava/lang/String;

    if-ne v2, v1, :cond_2

    .line 44
    invoke-static {p1, p0, p2, p3}, Lcom/alibaba/fastjson/parser/MapDeserializer;->parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object p0

    .line 46
    :cond_2
    :try_start_1
    invoke-static {p1, p0, v1, p2, p3}, Lcom/alibaba/fastjson/parser/MapDeserializer;->parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object p0

    .line 49
    :cond_3
    :try_start_2
    invoke-virtual {p1, p0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 53
    throw p0
.end method
