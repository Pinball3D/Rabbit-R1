.class public final Lcom/alibaba/fastjson/serializer/DateCodec;
.super Ljava/lang/Object;
.source "DateCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/DateCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/DateCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p4, :cond_0

    return-object p0

    .line 272
    :cond_0
    instance-of p3, p4, Ljava/util/Date;

    if-eqz p3, :cond_1

    return-object p4

    .line 274
    :cond_1
    instance-of p3, p4, Ljava/math/BigDecimal;

    if-eqz p3, :cond_2

    .line 275
    new-instance p0, Ljava/util/Date;

    check-cast p4, Ljava/math/BigDecimal;

    invoke-virtual {p4}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object p0

    .line 276
    :cond_2
    instance-of p3, p4, Ljava/lang/Number;

    if-eqz p3, :cond_3

    .line 277
    new-instance p0, Ljava/util/Date;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object p0

    .line 278
    :cond_3
    instance-of p3, p4, Ljava/lang/String;

    if-eqz p3, :cond_a

    .line 279
    check-cast p4, Ljava/lang/String;

    .line 280
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_4

    return-object p0

    .line 284
    :cond_4
    new-instance p3, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {p3, p4}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 286
    :try_start_0
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 287
    iget-object p0, p3, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 289
    const-class p1, Ljava/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, p1, :cond_5

    .line 296
    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    return-object p0

    .line 293
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    return-object p0

    :cond_6
    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    const-string p2, "0000-00-00"

    .line 299
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "0000-00-00T00:00:00"

    .line 300
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "0001-01-01T00:00:00+08:00"

    .line 301
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    if-eqz p5, :cond_8

    .line 308
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-direct {p0, p5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;

    move-result-object p0

    .line 313
    :goto_0
    :try_start_2
    invoke-virtual {p0, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    .line 318
    :catch_0
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    .line 319
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :cond_9
    :goto_1
    return-object p0

    :catchall_0
    move-exception p0

    .line 296
    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 297
    throw p0

    .line 322
    :cond_a
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "parse error"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 154
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/serializer/DateCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 159
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 162
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 164
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :cond_0
    :goto_0
    move-object v7, v1

    goto/16 :goto_1

    :cond_1
    const/4 v5, 0x4

    if-ne v1, v5, :cond_4

    .line 167
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 171
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v4, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 172
    new-instance v3, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 173
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 174
    iget-object v1, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 175
    const-class v4, Ljava/util/Calendar;

    if-ne p2, v4, :cond_2

    .line 176
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    return-object v1

    .line 179
    :cond_2
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 181
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    goto :goto_0

    :cond_4
    const/16 v6, 0x8

    if-ne v1, v6, :cond_5

    .line 184
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v7, v2

    goto/16 :goto_1

    :cond_5
    const/16 v6, 0xc

    const/16 v7, 0xd

    const/16 v8, 0x11

    const-string v9, "syntax error"

    if-ne v1, v6, :cond_a

    .line 187
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 190
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v5, :cond_9

    .line 191
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    const-string v6, "@type"

    .line 193
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 194
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 195
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 197
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 198
    iget-object v6, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    invoke-virtual {v6, v1, v2, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object p2, v1

    .line 203
    :cond_6
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 204
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    :cond_7
    const/16 v1, 0x3a

    .line 207
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 213
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v4, :cond_8

    .line 215
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v3

    .line 216
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 221
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 223
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto/16 :goto_0

    .line 218
    :cond_8
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "syntax error : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 209
    :cond_9
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 224
    :cond_a
    iget v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    if-ne v1, v4, :cond_d

    const/4 v1, 0x0

    .line 225
    iput v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 226
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 228
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v5, :cond_c

    const-string v1, "val"

    .line 229
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 232
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 237
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 239
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 241
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto/16 :goto_0

    .line 230
    :cond_b
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 234
    :cond_c
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 243
    :cond_d
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    .line 246
    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/fastjson/serializer/DateCodec;->cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 247
    const-class p1, Ljava/util/Calendar;

    if-ne p2, p1, :cond_10

    .line 248
    instance-of p1, p0, Ljava/util/Calendar;

    if-eqz p1, :cond_e

    return-object p0

    .line 252
    :cond_e
    check-cast p0, Ljava/util/Date;

    if-nez p0, :cond_f

    return-object v2

    .line 257
    :cond_f
    iget-object p1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    iget-object p2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 258
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p1

    :cond_10
    return-object p0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 48
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez v1, :cond_0

    .line 51
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 55
    :cond_0
    iget v3, v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 56
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v4, p4

    if-eq v3, v4, :cond_2

    .line 57
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/util/Date;

    if-ne v3, v4, :cond_1

    const-string v0, "new Date("

    .line 58
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 59
    move-object v0, v1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    const/16 v0, 0x29

    .line 60
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x7b

    .line 62
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const-string v3, "@type"

    const/4 v4, 0x0

    .line 63
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    const/16 v0, 0x2c

    .line 65
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const-string v0, "val"

    .line 66
    invoke-virtual {v2, v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 67
    move-object v0, v1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    const/16 v0, 0x7d

    .line 68
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_0
    return-void

    .line 75
    :cond_2
    instance-of v3, v1, Ljava/util/Calendar;

    if-eqz v3, :cond_3

    .line 76
    check-cast v1, Ljava/util/Calendar;

    .line 77
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    goto :goto_1

    .line 79
    :cond_3
    check-cast v1, Ljava/util/Date;

    .line 82
    :goto_1
    iget v3, v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v3

    if-nez v3, :cond_4

    .line 85
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 86
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 88
    :cond_4
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 93
    :cond_5
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 95
    iget v1, v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_a

    .line 96
    iget v1, v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v5

    const/16 v5, 0x27

    const/16 v6, 0x22

    if-eqz v1, :cond_6

    .line 97
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 99
    :cond_6
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 102
    :goto_2
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    invoke-static {v1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 106
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v1

    const/4 v1, 0x5

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v7, 0xb

    .line 108
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xc

    .line 109
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v9, 0xd

    .line 110
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v11, 0xe

    .line 111
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v11, 0x10

    const/16 v12, 0x13

    const/16 v15, 0xa

    if-eqz v0, :cond_7

    const-string v16, "0000-00-00T00:00:00.000"

    .line 115
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    int-to-long v13, v0

    const/16 v0, 0x17

    .line 116
    invoke-static {v13, v14, v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v13, v10

    .line 117
    invoke-static {v13, v14, v12, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v12, v8

    .line 118
    invoke-static {v12, v13, v11, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v7, v7

    .line 119
    invoke-static {v7, v8, v9, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v0, v1

    .line 120
    invoke-static {v0, v1, v15, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v0, v4

    const/4 v4, 0x7

    .line 121
    invoke-static {v0, v1, v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v0, v3

    const/4 v3, 0x4

    .line 122
    invoke-static {v0, v1, v3, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    goto :goto_3

    :cond_7
    if-nez v10, :cond_8

    if-nez v8, :cond_8

    if-nez v7, :cond_8

    const-string v0, "0000-00-00"

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    int-to-long v0, v1

    .line 127
    invoke-static {v0, v1, v15, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v0, v4

    const/4 v4, 0x7

    .line 128
    invoke-static {v0, v1, v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v0, v3

    const/4 v3, 0x4

    .line 129
    invoke-static {v0, v1, v3, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    goto :goto_3

    :cond_8
    const-string v0, "0000-00-00T00:00:00"

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    int-to-long v13, v10

    .line 132
    invoke-static {v13, v14, v12, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v12, v8

    .line 133
    invoke-static {v12, v13, v11, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v7, v7

    .line 134
    invoke-static {v7, v8, v9, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v0, v1

    .line 135
    invoke-static {v0, v1, v15, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v0, v4

    const/4 v4, 0x7

    .line 136
    invoke-static {v0, v1, v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v0, v3

    const/4 v3, 0x4

    .line 137
    invoke-static {v0, v1, v3, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 141
    :goto_3
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([C)V

    .line 143
    iget v0, v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 144
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_4

    :cond_9
    const/16 v0, 0x22

    .line 146
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_4

    .line 149
    :cond_a
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    :goto_4
    return-void
.end method
