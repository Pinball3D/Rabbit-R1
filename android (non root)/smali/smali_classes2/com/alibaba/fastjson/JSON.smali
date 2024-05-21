.class public abstract Lcom/alibaba/fastjson/JSON;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONStreamAware;
.implements Lcom/alibaba/fastjson/JSONAware;


# static fields
.field public static DEFAULT_GENERATE_FEATURE:I = 0x0

.field public static DEFAULT_PARSER_FEATURE:I = 0x0

.field public static final DEFAULT_TYPE_KEY:Ljava/lang/String; = "@type"

.field public static DEFFAULT_DATE_FORMAT:Ljava/lang/String; = null

.field public static final VERSION:Ljava/lang/String; = "1.1.71"

.field public static defaultLocale:Ljava/util/Locale;

.field public static defaultTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    .line 65
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 67
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v1

    .line 68
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    sput-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 79
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    .line 80
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    .line 81
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 88
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final parse(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 96
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {v1, p0, v2, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 97
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 99
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 1

    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 380
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 400
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 401
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p0

    .line 403
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 405
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    return-object p0
.end method

.method public static varargs parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 3

    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v1, 0x0

    .line 385
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 386
    aget-object v2, p2, v1

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 4

    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 116
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 117
    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parse([B[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2

    .line 108
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 110
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "UTF-8 not support"

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    .line 289
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseArray(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONArray;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v2, 0x0

    .line 298
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 299
    aget-object v3, p1, v2

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {p1, p0, v2, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 306
    iget-object p0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 307
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1

    :cond_2
    const/16 p0, 0x14

    if-ne v1, p0, :cond_3

    goto :goto_1

    .line 314
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 315
    invoke-virtual {p1, p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 317
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    move-object v0, p0

    .line 320
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    return-object v0
.end method

.method public static final parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 332
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 333
    iget-object p0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 334
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 336
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_0

    :cond_1
    const/16 v3, 0x14

    if-ne v2, v3, :cond_2

    .line 338
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 341
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 344
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 347
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    return-object v0
.end method

.method public static final parseArray(Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 359
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 360
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 364
    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 367
    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 369
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    return-object v0
.end method

.method public static final parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    .line 147
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 148
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 153
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "@type"

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 149
    :cond_2
    :goto_0
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONObject;
    .locals 7

    .line 124
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    .line 125
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    .line 126
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0

    .line 129
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 130
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    .line 132
    array-length v4, p1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, p1, v2

    .line 133
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    if-ne v5, v6, :cond_2

    move v1, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "@type"

    invoke-virtual {v0, p1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/TypeReference<",
            "TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 171
    iget-object p1, p1, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    .line 285
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 181
    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 176
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 201
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    .line 202
    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_1
    new-instance p3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {p3, p0, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 206
    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 208
    invoke-virtual {p3, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 217
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 227
    :cond_0
    array-length v0, p5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p5, v1

    .line 228
    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr p4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_1
    new-instance p5, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {p5, p0, p2, p4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 233
    instance-of p0, p3, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    if-eqz p0, :cond_2

    .line 234
    invoke-virtual {p5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getExtraTypeProviders()Ljava/util/List;

    move-result-object p0

    move-object p2, p3

    check-cast p2, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_2
    instance-of p0, p3, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    if-eqz p0, :cond_3

    .line 238
    invoke-virtual {p5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getExtraProcessors()Ljava/util/List;

    move-result-object p0

    move-object p2, p3

    check-cast p2, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_3
    instance-of p0, p3, Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    if-eqz p0, :cond_4

    .line 242
    check-cast p3, Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    iput-object p3, p5, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .line 245
    :cond_4
    invoke-virtual {p5, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 247
    invoke-virtual {p5, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 249
    invoke-virtual {p5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    const/4 v3, 0x0

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 166
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 192
    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 257
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 259
    :catch_0
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "UTF-8 not support"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final varargs parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([CI",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 265
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 270
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 271
    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    :cond_1
    new-instance p3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    sget-object v1, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {p3, p0, p1, v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 275
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 277
    invoke-virtual {p3, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 279
    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 602
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 607
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 616
    :cond_0
    instance-of v1, p0, Lcom/alibaba/fastjson/JSON;

    if-eqz v1, :cond_1

    .line 617
    check-cast p0, Lcom/alibaba/fastjson/JSON;

    return-object p0

    .line 620
    :cond_1
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 621
    check-cast p0, Ljava/util/Map;

    .line 623
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    .line 626
    instance-of v0, p0, Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    .line 627
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    goto :goto_0

    .line 628
    :cond_2
    instance-of v0, p0, Ljava/util/TreeMap;

    if-eqz v0, :cond_3

    .line 629
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0

    .line 631
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 633
    :goto_0
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 635
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 636
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 637
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 638
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 639
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object p1

    .line 645
    :cond_5
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_7

    .line 646
    check-cast p0, Ljava/util/Collection;

    .line 648
    new-instance p1, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 650
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 651
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 652
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object p1

    .line 658
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 660
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 661
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 664
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 665
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    .line 667
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_9

    .line 670
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 671
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 672
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    return-object v0

    .line 678
    :cond_a
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b

    return-object p0

    .line 682
    :cond_b
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object p1

    .line 683
    instance-of v1, p1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v1, :cond_d

    .line 684
    check-cast p1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 686
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 688
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    .line 689
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 690
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_c
    return-object v0

    :catch_0
    move-exception p0

    .line 693
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "toJSON error"

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_d
    return-object v0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 493
    invoke-static {p0, p1, v0, p2, p3}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 4

    .line 507
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 510
    :try_start_0
    new-instance p3, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {p3, v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    if-eqz p2, :cond_7

    .line 513
    array-length p1, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_7

    aget-object v1, p2, p4

    if-nez v1, :cond_0

    goto :goto_1

    .line 518
    :cond_0
    instance-of v2, v1, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    if-eqz v2, :cond_1

    .line 519
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyPreFilters()Ljava/util/List;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_1
    instance-of v2, v1, Lcom/alibaba/fastjson/serializer/NameFilter;

    if-eqz v2, :cond_2

    .line 523
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFilters()Ljava/util/List;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/alibaba/fastjson/serializer/NameFilter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_2
    instance-of v2, v1, Lcom/alibaba/fastjson/serializer/ValueFilter;

    if-eqz v2, :cond_3

    .line 527
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getValueFilters()Ljava/util/List;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/alibaba/fastjson/serializer/ValueFilter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_3
    instance-of v2, v1, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    if-eqz v2, :cond_4

    .line 531
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFilters()Ljava/util/List;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_4
    instance-of v2, v1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    if-eqz v2, :cond_5

    .line 535
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getBeforeFilters()Ljava/util/List;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_5
    instance-of v2, v1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    if-eqz v2, :cond_6

    .line 539
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getAfterFilters()Ljava/util/List;

    move-result-object v2

    check-cast v1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 544
    :cond_7
    invoke-virtual {p3, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    const-string p0, "UTF-8"

    .line 545
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 548
    throw p0
.end method

.method public static final varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 3

    .line 477
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/io/Writer;

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-direct {v0, v1, v2, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 480
    :try_start_0
    new-instance p2, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 481
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    const-string p0, "UTF-8"

    .line 483
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 486
    throw p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 2

    .line 500
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, p1, v1, p2}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 3

    .line 442
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/io/Writer;

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-direct {v0, v1, v2, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 445
    :try_start_0
    new-instance p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-direct {p1, v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 447
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    const-string p0, "UTF-8"

    .line 449
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 452
    throw p0
.end method

.method public static final toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 411
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v0, 0x0

    new-array v5, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    .line 422
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    new-array v3, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    const/4 v4, 0x0

    sget v5, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    .line 461
    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 5

    .line 726
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p4, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 729
    :try_start_0
    new-instance p4, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {p4, v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 730
    array-length p1, p5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p1, :cond_0

    aget-object v4, p5, v2

    .line 731
    invoke-virtual {p4, v4, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 734
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    .line 735
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setDateFormat(Ljava/lang/String;)V

    .line 736
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p4, p1, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    :cond_1
    if-eqz p2, :cond_9

    .line 740
    array-length p1, p2

    :goto_1
    if-ge v1, p1, :cond_9

    aget-object p3, p2, v1

    if-nez p3, :cond_2

    goto :goto_2

    .line 745
    :cond_2
    instance-of p5, p3, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    if-eqz p5, :cond_3

    .line 746
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyPreFilters()Ljava/util/List;

    move-result-object p5

    move-object v2, p3

    check-cast v2, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_3
    instance-of p5, p3, Lcom/alibaba/fastjson/serializer/NameFilter;

    if-eqz p5, :cond_4

    .line 750
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFilters()Ljava/util/List;

    move-result-object p5

    move-object v2, p3

    check-cast v2, Lcom/alibaba/fastjson/serializer/NameFilter;

    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    :cond_4
    instance-of p5, p3, Lcom/alibaba/fastjson/serializer/ValueFilter;

    if-eqz p5, :cond_5

    .line 754
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getValueFilters()Ljava/util/List;

    move-result-object p5

    move-object v2, p3

    check-cast v2, Lcom/alibaba/fastjson/serializer/ValueFilter;

    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    :cond_5
    instance-of p5, p3, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    if-eqz p5, :cond_6

    .line 758
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFilters()Ljava/util/List;

    move-result-object p5

    move-object v2, p3

    check-cast v2, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    :cond_6
    instance-of p5, p3, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    if-eqz p5, :cond_7

    .line 762
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getBeforeFilters()Ljava/util/List;

    move-result-object p5

    move-object v2, p3

    check-cast v2, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_7
    instance-of p5, p3, Lcom/alibaba/fastjson/serializer/AfterFilter;

    if-eqz p5, :cond_8

    .line 766
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getAfterFilters()Ljava/util/List;

    move-result-object p5

    check-cast p3, Lcom/alibaba/fastjson/serializer/AfterFilter;

    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 771
    :cond_9
    invoke-virtual {p4, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 773
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 776
    throw p0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 466
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 456
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    .line 434
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 v3, 0x0

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toJSONString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 553
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v0, 0x0

    .line 556
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, p1, v0

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    .line 438
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v3, 0x0

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    .line 418
    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONStringWithDateFormat(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    .line 430
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v2, 0x0

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONStringZ(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    .line 470
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/JSON;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 702
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs writeJSONStringTo(Ljava/lang/Object;Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 2

    .line 560
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-direct {v0, p1, v1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 563
    :try_start_0
    new-instance p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-direct {p1, v0, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 565
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 568
    throw p0
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 4

    .line 578
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/io/Writer;

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 580
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 581
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 582
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 585
    throw p0
.end method

.method public toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 709
    const-class v0, Ljava/util/Map;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 713
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 574
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeJSONString(Ljava/lang/Appendable;)V
    .locals 4

    .line 589
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/io/Writer;

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 591
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 592
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 594
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 597
    throw p0
.end method
