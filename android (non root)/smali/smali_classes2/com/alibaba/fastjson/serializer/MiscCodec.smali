.class public final Lcom/alibaba/fastjson/serializer/MiscCodec;
.super Ljava/lang/Object;
.source "MiscCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/MiscCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MiscCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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

    .line 142
    const-class p3, Ljava/lang/StackTraceElement;

    if-ne p2, p3, :cond_0

    .line 143
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/MiscCodec;->parseStackTraceElement(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 146
    :cond_0
    iget-object p0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 150
    iget p3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p3, v0, :cond_3

    .line 151
    iput v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/16 p3, 0x10

    .line 152
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 154
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p3

    const/4 v2, 0x4

    const-string v3, "syntax error"

    if-ne p3, v2, :cond_2

    const-string p3, "val"

    .line 155
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/16 p0, 0x11

    .line 163
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 165
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p0

    const/16 p3, 0xd

    .line 167
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto :goto_0

    .line 156
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 169
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    const/4 p3, 0x0

    if-nez p0, :cond_4

    return-object p3

    .line 177
    :cond_4
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 178
    check-cast p0, Ljava/lang/String;

    .line 202
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    return-object p3

    .line 206
    :cond_5
    const-class v2, Ljava/util/UUID;

    if-ne p2, v2, :cond_6

    .line 207
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    return-object p0

    .line 208
    :cond_6
    const-class v2, Ljava/lang/Class;

    if-ne p2, v2, :cond_7

    .line 209
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object p1, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    invoke-static {p0, p1, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 210
    :cond_7
    const-class v2, Ljava/util/Locale;

    const/4 v3, 0x1

    if-ne p2, v2, :cond_a

    const-string p1, "_"

    .line 211
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 213
    array-length p1, p0

    if-ne p1, v3, :cond_8

    .line 214
    new-instance p1, Ljava/util/Locale;

    aget-object p0, p0, v1

    invoke-direct {p1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 217
    :cond_8
    array-length p1, p0

    if-ne p1, v0, :cond_9

    .line 218
    new-instance p1, Ljava/util/Locale;

    aget-object p2, p0, v1

    aget-object p0, p0, v3

    invoke-direct {p1, p2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 221
    :cond_9
    new-instance p1, Ljava/util/Locale;

    aget-object p2, p0, v1

    aget-object p3, p0, v3

    aget-object p0, p0, v0

    invoke-direct {p1, p2, p3, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 222
    :cond_a
    const-class v0, Ljava/net/URI;

    if-ne p2, v0, :cond_b

    .line 223
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    .line 224
    :cond_b
    const-class v0, Ljava/net/URL;

    if-ne p2, v0, :cond_c

    .line 226
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 228
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "create url error"

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 230
    :cond_c
    const-class v0, Ljava/util/regex/Pattern;

    if-ne p2, v0, :cond_d

    .line 231
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0

    .line 232
    :cond_d
    const-class v0, Ljava/nio/charset/Charset;

    if-ne p2, v0, :cond_e

    .line 233
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0

    .line 234
    :cond_e
    const-class v0, Ljava/util/Currency;

    if-ne p2, v0, :cond_f

    .line 235
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    return-object p0

    .line 236
    :cond_f
    const-class v0, Ljava/text/SimpleDateFormat;

    if-ne p2, v0, :cond_10

    .line 237
    new-instance p2, Ljava/text/SimpleDateFormat;

    iget-object p3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object p3, p3, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-direct {p2, p0, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 238
    iget-object p0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object p2

    .line 240
    :cond_10
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_13

    const-class p1, Ljava/lang/Character;

    if-ne p2, p1, :cond_11

    goto :goto_1

    .line 243
    :cond_11
    instance-of p1, p2, Ljava/lang/Class;

    if-eqz p1, :cond_12

    .line 244
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.Uri"

    .line 245
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 247
    :try_start_1
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p2, "parse"

    new-array v0, v3, [Ljava/lang/Class;

    .line 248
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 249
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 252
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "parse android.net.Uri error."

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 257
    :cond_12
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    .line 241
    :cond_13
    :goto_1
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToChar(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 180
    :cond_14
    instance-of p1, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_17

    .line 181
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    .line 183
    const-class p1, Ljava/util/Currency;

    if-ne p2, p1, :cond_16

    const-string p1, "currency"

    .line 184
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 186
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    return-object p0

    :cond_15
    const-string p1, "currencyCode"

    .line 189
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 191
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    return-object p0

    .line 195
    :cond_16
    const-class p1, Ljava/util/Map$Entry;

    if-ne p2, p1, :cond_17

    .line 196
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 199
    :cond_17
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "except string value"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected parseStackTraceElement(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            ")TT;"
        }
    .end annotation

    .line 263
    iget-object p0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 265
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object v1

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v3, 0xc

    const/16 v4, 0x10

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-ne v0, v4, :cond_1

    goto :goto_0

    .line 271
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "syntax error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p0

    invoke-static {p0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    move v7, v0

    move-object v3, v1

    move-object v5, v3

    move-object v6, v5

    .line 281
    :cond_3
    :goto_1
    iget-object v8, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xd

    if-nez v8, :cond_5

    .line 284
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v9, :cond_4

    .line 285
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_3

    .line 288
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v4, :cond_5

    goto :goto_1

    :cond_5
    const/16 v10, 0x3a

    .line 293
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    const-string v10, "className"

    .line 294
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x4

    const-string v12, "syntax error"

    if-eqz v10, :cond_8

    .line 295
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v2, :cond_6

    move-object v3, v1

    goto/16 :goto_2

    .line 297
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v11, :cond_7

    .line 298
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 300
    :cond_7
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    const-string v10, "methodName"

    .line 302
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 303
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v2, :cond_9

    move-object v5, v1

    goto/16 :goto_2

    .line 305
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v11, :cond_a

    .line 306
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 308
    :cond_a
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    const-string v10, "fileName"

    .line 310
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 311
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-ne v6, v2, :cond_c

    move-object v6, v1

    goto/16 :goto_2

    .line 313
    :cond_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-ne v6, v11, :cond_d

    .line 314
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 316
    :cond_d
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    const-string v10, "lineNumber"

    .line 318
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 319
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v2, :cond_f

    move v7, v0

    goto/16 :goto_2

    .line 321
    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_10

    .line 322
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v7

    goto :goto_2

    .line 324
    :cond_10
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    const-string v10, "nativeMethod"

    .line 326
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 327
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v2, :cond_12

    .line 328
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 329
    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/4 v10, 0x6

    if-ne v8, v10, :cond_13

    .line 330
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 331
    :cond_13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/4 v10, 0x7

    if-ne v8, v10, :cond_14

    .line 332
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 334
    :cond_14
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    const-string v10, "@type"

    const-string v13, "syntax error : "

    if-ne v8, v10, :cond_19

    .line 337
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v11, :cond_17

    .line 338
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v8

    const-string v10, "java.lang.StackTraceElement"

    .line 339
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    goto :goto_2

    .line 340
    :cond_16
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 343
    :cond_17
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v2, :cond_18

    .line 351
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v9, :cond_3

    .line 352
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 356
    :goto_3
    new-instance p0, Ljava/lang/StackTraceElement;

    invoke-direct {p0, v3, v5, v6, v7}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 344
    :cond_18
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 348
    :cond_19
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object p0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_3

    .line 36
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p4, p2, :cond_2

    const-class p2, Ljava/lang/Character;

    if-ne p4, p2, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p2, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    .line 40
    invoke-static {p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    .line 41
    const-class p2, Ljava/util/Enumeration;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[]"

    .line 42
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, ""

    .line 37
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 51
    :cond_3
    instance-of v0, p2, Ljava/util/regex/Pattern;

    if-eqz v0, :cond_4

    .line 52
    check-cast p2, Ljava/util/regex/Pattern;

    .line 53
    invoke-virtual {p2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 54
    :cond_4
    instance-of v0, p2, Ljava/util/TimeZone;

    if-eqz v0, :cond_5

    .line 55
    check-cast p2, Ljava/util/TimeZone;

    .line 56
    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 57
    :cond_5
    instance-of v0, p2, Ljava/util/Currency;

    if-eqz v0, :cond_6

    .line 58
    check-cast p2, Ljava/util/Currency;

    .line 59
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 60
    :cond_6
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 61
    check-cast p2, Ljava/lang/Class;

    .line 62
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 63
    :cond_7
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_9

    .line 64
    check-cast p2, Ljava/lang/Character;

    .line 66
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "\u0000"

    .line 68
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 70
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 72
    :cond_9
    instance-of v0, p2, Ljava/text/SimpleDateFormat;

    const/16 v1, 0x2c

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 73
    move-object p3, p2

    check-cast p3, Ljava/text/SimpleDateFormat;

    invoke-virtual {p3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p3

    .line 75
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_a

    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p4, :cond_a

    const/16 p4, 0x7b

    .line 77
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const-string p4, "@type"

    .line 78
    invoke-virtual {p0, p4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 79
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const-string p1, "val"

    .line 81
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 82
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x7d

    .line 83
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 88
    :cond_a
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 89
    :cond_b
    instance-of v0, p2, Lcom/alibaba/fastjson/JSONStreamAware;

    if-eqz v0, :cond_c

    .line 90
    check-cast p2, Lcom/alibaba/fastjson/JSONStreamAware;

    .line 91
    iget-object p0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-interface {p2, p0}, Lcom/alibaba/fastjson/JSONStreamAware;->writeJSONString(Ljava/lang/Appendable;)V

    goto/16 :goto_5

    .line 92
    :cond_c
    instance-of v0, p2, Lcom/alibaba/fastjson/JSONAware;

    if-eqz v0, :cond_d

    .line 93
    check-cast p2, Lcom/alibaba/fastjson/JSONAware;

    .line 94
    invoke-interface {p2}, Lcom/alibaba/fastjson/JSONAware;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 95
    :cond_d
    instance-of v0, p2, Lcom/alibaba/fastjson/serializer/JSONSerializable;

    if-eqz v0, :cond_e

    .line 96
    check-cast p2, Lcom/alibaba/fastjson/serializer/JSONSerializable;

    .line 97
    invoke-interface {p2, p1, p3, p4}, Lcom/alibaba/fastjson/serializer/JSONSerializable;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_5

    .line 98
    :cond_e
    instance-of v0, p2, Ljava/util/Enumeration;

    if-eqz v0, :cond_13

    .line 100
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_f

    .line 101
    instance-of v0, p4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_f

    .line 102
    check-cast p4, Ljava/lang/reflect/ParameterizedType;

    .line 103
    invoke-interface {p4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p4

    aget-object p4, p4, v2

    goto :goto_2

    :cond_f
    const/4 p4, 0x0

    .line 107
    :goto_2
    move-object v0, p2

    check-cast v0, Ljava/util/Enumeration;

    .line 109
    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 110
    invoke-virtual {p1, v3, p2, p3, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p2, 0x5b

    .line 114
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 115
    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 116
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 p3, v2, 0x1

    if-eqz v2, :cond_10

    .line 118
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_10
    if-nez p2, :cond_11

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_4

    .line 126
    :cond_11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 128
    iget-object v5, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v4

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, p1, p2, v2, p4}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    :goto_4
    move v2, p3

    goto :goto_3

    :cond_12
    const/16 p2, 0x5d

    .line 131
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iput-object v3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto :goto_5

    :catchall_0
    move-exception p0

    iput-object v3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 134
    throw p0

    .line 136
    :cond_13
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    :goto_5
    return-void
.end method
