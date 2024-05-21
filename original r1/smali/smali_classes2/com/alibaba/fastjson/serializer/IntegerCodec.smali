.class public final Lcom/alibaba/fastjson/serializer/IntegerCodec;
.super Ljava/lang/Object;
.source "IntegerCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/IntegerCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 79
    iget-object p0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0x10

    if-ne v0, v1, :cond_0

    .line 83
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 89
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_2

    const-class p1, Ljava/lang/Long;

    if-ne p2, p1, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result p1

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 97
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "int value overflow, field : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 90
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide p1

    .line 91
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 100
    :goto_1
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_5

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    .line 103
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 104
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, p0, :cond_5

    const-class p0, Ljava/lang/Long;

    if-ne p2, p0, :cond_4

    goto :goto_2

    .line 107
    :cond_4
    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValueExact()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_3

    .line 105
    :cond_5
    :goto_2
    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_3
    move-object p1, p0

    goto :goto_5

    .line 110
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p0

    .line 113
    :try_start_1
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_8

    const-class p1, Ljava/lang/Long;

    if-ne p2, p1, :cond_7

    goto :goto_4

    .line 116
    :cond_7
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_3

    .line 114
    :cond_8
    :goto_4
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_5
    return-object p1

    :catch_1
    move-exception p1

    .line 119
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cast error, field : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", value "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object p0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 43
    move-object p1, p2

    check-cast p1, Ljava/lang/Number;

    if-nez p1, :cond_1

    .line 46
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p2, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/16 p1, 0x30

    .line 47
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_0
    return-void

    .line 54
    :cond_1
    instance-of p2, p2, Ljava/lang/Long;

    if-eqz p2, :cond_2

    .line 55
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 60
    :goto_1
    iget p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object p3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p3, p3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 62
    const-class p3, Ljava/lang/Byte;

    if-ne p2, p3, :cond_3

    const/16 p1, 0x42

    .line 63
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 64
    :cond_3
    const-class p3, Ljava/lang/Short;

    if-ne p2, p3, :cond_4

    const/16 p1, 0x53

    .line 65
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 66
    :cond_4
    const-class p3, Ljava/lang/Long;

    if-ne p2, p3, :cond_5

    .line 67
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long p3, p1, v0

    if-gtz p3, :cond_5

    const-wide/32 v0, -0x80000000

    cmp-long p1, p1, v0

    if-ltz p1, :cond_5

    .line 69
    const-class p1, Ljava/lang/Long;

    if-eq p4, p1, :cond_5

    const/16 p1, 0x4c

    .line 70
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_5
    :goto_2
    return-void
.end method
